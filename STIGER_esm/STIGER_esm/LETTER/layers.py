import random

import numpy as np
from sklearn.cluster import KMeans
from typing import Union
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.distributed as distributed

class MLP(nn.Module):
    """
    Multi-Layer Perceptron (MLP) module.

    Args:
        hidden_sizes (list): List of integers representing the sizes of hidden layers.
        dropout (float, optional): Dropout probability. Defaults to 0.0.

    Attributes:
        mlp (nn.Sequential): Sequential container for the MLP layers.

    """

    def __init__(self, hidden_sizes: list, dropout: float = 0.0):
        super(MLP, self).__init__()
        mlp_modules = []
        for idx, (input_size, output_size) in enumerate(
            zip(hidden_sizes[:-1], hidden_sizes[1:])
        ):
            mlp_modules.append(nn.Dropout(p=dropout))
            mlp_modules.append(nn.Linear(input_size, output_size))
            activation_func = nn.ReLU()
            if idx != len(hidden_sizes) - 2:
                mlp_modules.append(activation_func)
        self.mlp = nn.Sequential(*mlp_modules)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        """
        Forward pass of the MLP.

        Args:
            x (torch.Tensor): Input tensor.

        Returns:
            torch.Tensor: Output tensor.

        """
        return self.mlp(x)


class RQLayer(nn.Module):


    def __init__(self, n_codebooks, codebook_size, latent_size, beta=0.25, mu=0.1):
        super(RQLayer, self).__init__()
        self.n_codebooks = n_codebooks
        self.latent_size = latent_size
        # Check if codebook_size is an int and convert it to a list of the same size for each level
        if isinstance(codebook_size, int):
            self.codebook_sizes = [codebook_size] * n_codebooks
        elif isinstance(codebook_size, list):
            if len(codebook_size) == n_codebooks:
                self.codebook_sizes = codebook_size
            else:
                raise ValueError("codebook_size must be an int or a list of int with length equal to n_codebooks")

        self.quantization_layers = nn.ModuleList([
            VQLayer(latent_size, codebook_size, beta,  mu)
            for codebook_size in self.codebook_sizes
        ])


    def forward(self, x: torch.Tensor):

        batch_size, _ = x.shape
        quantized_x = torch.zeros(batch_size, self.latent_size, device=x.device)
        sum_quant_loss = 0.0
        num_unused_codes = 0.0
        output = torch.empty(batch_size, self.n_codebooks, dtype=torch.long, device=x.device)
        for quantization_layer, level in zip(self.quantization_layers, range(self.n_codebooks)):
            quant, quant_loss, unused_codes, output[:, level] = quantization_layer(x)
            x = x - quant
            quantized_x += quant
            sum_quant_loss += quant_loss
            num_unused_codes += unused_codes

        mean_quant_loss = sum_quant_loss / self.n_codebooks


        return quantized_x, mean_quant_loss, num_unused_codes, output

    def generate_codebook(self, x: torch.Tensor, device: torch.device) -> torch.Tensor:

        for quantization_layer in self.quantization_layers:
            x = quantization_layer.generate_codebook(x, device)
        return x

    def update_center(self):

        for quantization_layer in self.quantization_layers:
            quantization_layer.constrained_km()

class VQLayer(nn.Module):

    def __init__(self, latent_size, codebook_size, beta=0.25,  mu=0.1):
        super(VQLayer, self).__init__()
        self.dim = latent_size
        self.n_embed = codebook_size
        self.beta=beta
        self.mu = mu
        self.code2center = None
        self.center2code = None

        self.embed = nn.Embedding(self.n_embed, self.dim)

    def get_code_embs(self):
        return self.embed.weight

    def _copy_init_embed(self, init_embed):
        self.embed.weight.data.copy_(init_embed)


    def constrained_km(self, n_clusters=10):
        from k_means_constrained import KMeansConstrained

        x = self.get_code_embs().cpu().detach().numpy()
        # x = self.get_code_embs()
        size_min = min(len(x) // (n_clusters * 2), 10)
        clf = KMeansConstrained(n_clusters=n_clusters, size_min=size_min, size_max=n_clusters * 6, max_iter=10, n_init=10,
                                n_jobs=10, verbose=False)
        clf.fit(x)
        # t_centers = torch.from_numpy(clf.cluster_centers_)
        t_labels = torch.from_numpy(clf.labels_).tolist()

        self.code2center = t_labels
        center2code = {}
        all_center = list(range(n_clusters))
        for center in all_center:
            center2code[center] = [index for index, num in enumerate(t_labels) if num == center]
        self.center2code = center2code


    def diversity_loss(self, x_q, indices):
        x_q = x_q.view(-1, self.dim)
        indices = indices.view(-1)

        indices_cluster = [self.code2center[idx.item()] for idx in indices]

        emb = self.get_code_embs()
        temp = 1

        pos_list = [self.center2code[i] for i in indices_cluster]
        pos_sample = []
        for idx, pos in enumerate(pos_list):
            random_element = random.choice(pos)

            while random_element == indices[idx]:
                random_element = random.choice(pos)
            pos_sample.append(random_element)

        y_true = torch.tensor(pos_sample, device=x_q.device)

        sim = torch.matmul(x_q, emb.t())

        sim_self = torch.zeros_like(sim)
        for idx, row in enumerate(sim_self):
            sim_self[idx, indices[idx]] = 1e12

        sim = sim - sim_self
        sim = sim / temp
        loss = F.cross_entropy(sim, y_true)

        return loss


    def forward(self, x: torch.Tensor):

        latent = x.view(-1, self.dim)
        code_embs = self.get_code_embs()
        dist = (
                latent.pow(2).sum(1, keepdim=True)
                - 2 * latent @ code_embs.t()
                + code_embs.pow(2).sum(1, keepdim=True).t()
        )
        _, embed_ind = (-dist).max(1)

        embed_onehot = F.one_hot(embed_ind, self.n_embed)
        embed_onehot_sum = embed_onehot.sum(0)
        if distributed.is_initialized():
            distributed.all_reduce(embed_onehot_sum, op=distributed.ReduceOp.SUM)
        unused_codes = (embed_onehot_sum == 0).sum().item()


        x_q = F.embedding(embed_ind, code_embs).view(x.shape)

        quant_loss = F.mse_loss(x_q, x.detach()) + self.beta * F.mse_loss(x, x_q.detach())
        x_q = x + (x_q - x).detach()

        embed_ind = embed_ind.view(*x.shape[:-1])

        if self.mu > 0:
            diversity_loss = self.diversity_loss(x_q, embed_ind)
            quant_loss = quant_loss + self.mu * diversity_loss


        return x_q, quant_loss, unused_codes, embed_ind

    def embed_code(self, embed_id: torch.Tensor) -> torch.Tensor:

        code_embs = self.get_code_embs()
        return F.embedding(embed_id, code_embs)

    def encode_to_id(self, x: torch.Tensor) -> torch.Tensor:

        latent = x.view(-1, self.dim)
        code_embs = self.get_code_embs()
        dist = (
                latent.pow(2).sum(1, keepdim=True)
                - 2 * latent @ code_embs.t()
                + code_embs.pow(2).sum(1, keepdim=True).t()
        )
        _, embed_ind = (-dist).max(1)
        embed_ind = embed_ind.view(*x.shape[:-1])

        return embed_ind


    def generate_codebook(self, x: torch.Tensor, device: torch.device) -> torch.Tensor:

        kmeans = KMeans(n_clusters=self.n_embed, n_init='auto').fit(x.detach().cpu().numpy())

        centers = torch.tensor(kmeans.cluster_centers_, dtype=torch.float, device=device).view(self.n_embed, self.dim)
        # cluster_size = torch.tensor(np.bincount(kmeans.labels_), dtype=torch.float, device=device)

        if distributed.is_initialized():
            distributed.broadcast(centers, 0)
            # distributed.broadcast(cluster_size, 0)


        self._copy_init_embed(centers.clone())

        code_embs = self.get_code_embs()
        dist = (
                x.pow(2).sum(1, keepdim=True)
                - 2 * x @ code_embs.t()
                + code_embs.pow(2).sum(1, keepdim=True).t()
        )
        _, embed_ind = (-dist).max(1)
        embed_ind = embed_ind.view(*x.shape[:-1])
        x_q = self.embed_code(embed_ind)

        return x - x_q



class RQVAEModel(nn.Module):


    def __init__(
        self,
        hidden_sizes: list,
        n_codebooks: int,
        codebook_size: Union[int, list],
        dropout: float,
        beta: float,
        alpha: float,
        mu: float,
        cf_dim: int,
    ):
        super(RQVAEModel, self).__init__()
        self.cf_dim = cf_dim
        self.alpha = alpha
        self.encoder = MLP(hidden_sizes, dropout=dropout)
        # n_codebooks, codebook_size, latent_size, vq_type="ema", beta=0.25, decay=0.99, eps=1e-5
        self.quantization_layer = RQLayer(n_codebooks, codebook_size, hidden_sizes[-1], beta, mu)
        self.decoder = MLP(hidden_sizes[::-1], dropout=dropout)
        self.cl_proj = nn.Linear(hidden_sizes[-1], cf_dim, bias=False)

    def forward(self, x: torch.Tensor) -> tuple:

        sem_dim = x.shape[1] - self.cf_dim
        x, cf_x = torch.split(x, [sem_dim, self.cf_dim], dim=1)

        encoded = self.encoder(x)
        quantized_x, quant_loss, num_unused_codes, _ = self.quantization_layer(encoded)
        decoded = self.decoder(quantized_x)

        cf_loss = self.cf_loss(self.cl_proj(quantized_x), cf_x)

        quant_loss = quant_loss + self.alpha * cf_loss


        return decoded, quant_loss, num_unused_codes

    def encode(self, x: torch.Tensor) -> np.ndarray:
        sem_dim = x.shape[1] - self.cf_dim
        x, cf_x = torch.split(x, [sem_dim, self.cf_dim], dim=1)

        encoded = self.encoder(x)
        _, _, _, output = self.quantization_layer(encoded)
        return output.detach().cpu().numpy()

    def cf_loss(self, quantized_x, cf_x):
        batch_size = quantized_x.size(0)
        labels = torch.arange(batch_size, dtype=torch.long, device=quantized_x.device)
        similarities = torch.matmul(quantized_x, cf_x.transpose(0, 1))
        cf_loss = F.cross_entropy(similarities, labels)
        return cf_loss

    def generate_codebook(self, x: torch.Tensor, device: torch.device):
        x = x.to(device)
        sem_dim = x.shape[1] - self.cf_dim
        x, cf_x = torch.split(x, [sem_dim, self.cf_dim], dim=1)

        encoded = self.encoder(x)
        self.quantization_layer.generate_codebook(encoded, device)

    def update_center(self):
        self.quantization_layer.update_center()