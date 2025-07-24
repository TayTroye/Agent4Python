import argparse
import os
from logging import getLogger

import torch
import numpy as np
import yaml
from PIL import Image
from accelerate import Accelerator
from torch.utils.data import TensorDataset, DataLoader
from transformers import CLIPModel, CLIPProcessor

from layers import RQVAEModel
from trainer import Trainer
from utils import *


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--dataset', type=str, default='Office_Products', help='Dataset name')
    parser.add_argument('--config_file', type=str, default='config_mnt.yaml', help='Config file')
    return parser.parse_known_args()




def encode_sent_emb(config, item2meta, id_mapping, processor, model):


    meta_sentences = []
    for i in range(1, len(id_mapping['id2item'])):
        meta_sentences.append(item2meta[id_mapping['id2item'][i]])

    embeddings = []
    start, batch_size = 0, 64
    while start < len(meta_sentences):
        sentences = meta_sentences[start: start + batch_size]

        encoded_sentences = processor(text=sentences, padding=True,
                                      truncation=True, return_tensors='pt').to(config['device'])
        # print(encoded_sentences["input_ids"].shape)
        # print(encoded_sentences["attention_mask"].shape)
        outputs = model.get_text_features(**encoded_sentences)
        print(outputs.shape)
        embeddings.append(outputs)

        start += batch_size
    embeddings = torch.cat(embeddings, dim=0).detach().cpu().numpy()
    print('Text Embeddings shape: ', embeddings.shape)

    return embeddings


def encode_image_emb(config, item2meta, id_mapping, processor, model):


    order_images = []
    for i in range(1, len(id_mapping['id2item'])):
        item = id_mapping['id2item'][i]
        image_file = os.path.join(config['data_dir'], 'Images', f"{item}.jpg")

        try:
            image = Image.open(image_file).convert("RGB")
        except Exception as e:
            print(f"Image open error: {e}")
            image = None

        order_images.append(image)

    embeddings = []
    start, batch_size = 0, 64
    while start < len(order_images):
        images = order_images[start: start + batch_size]

        none_index = []
        for i, img in enumerate(images):
            if img is None:
                none_index.append(i)

        pad_image = Image.new('RGB', (224, 224), (0, 0, 0))
        for i in none_index:
            images[i] = pad_image
        none_index = torch.tensor(none_index, dtype=torch.long).to(config['device'])

        image_inputs = processor(images=images, padding=True, return_tensors='pt').to(config['device'])

        outputs = model.get_image_features(**image_inputs)
        if len(none_index) > 0:
            print("pad_image = 0")
            outputs[none_index] = 0

        print(outputs.shape)
        embeddings.append(outputs)

        start += batch_size
    embeddings = torch.cat(embeddings, dim=0).detach().cpu().numpy()
    print('Image Embeddings shape: ', embeddings.shape)

    return embeddings


if __name__ == '__main__':
    args, unparsed_args = parse_args()
    command_line_configs = parse_command_line_args(unparsed_args)


    config = {}


    config.update(yaml.safe_load(open(args.config_file, 'r')))
    config.update(command_line_configs)

    config['run_local_time'] = get_local_time()
    config['dataset'] = args.dataset
    config['data_dir'] = os.path.join(config['data_dir'], config['dataset'])

    config = convert_config_dict(config)

    config['device'], config['use_ddp'] = init_device()
    config['accelerator'] = Accelerator()


    init_seed(config['rand_seed'], config['reproducibility'])
    init_logger(config)

    logger = getLogger()
    log(f'Device: {config["device"]}', config['accelerator'], logger)
    log(f'Config: {str(config)}', config['accelerator'], logger)

    id_mapping_file = os.path.join(config['data_dir'], 'id_mapping.json')
    id_mapping = load_json(id_mapping_file)


    log(f'[TOKENIZER] Encoding sentence embeddings...', config['accelerator'], logger)

    meta_file = os.path.join(config['data_dir'], 'metadata.sentence.json')
    metadata = load_json(meta_file)

    model = CLIPModel.from_pretrained(config["sent_emb_model"]).to(config['device']).eval()
    processor = CLIPProcessor.from_pretrained(config["sent_emb_model"])


    with torch.no_grad():
        # generate PLM emb and save to file

        sent_embs = encode_sent_emb(config, metadata, id_mapping, processor, model)
        image_embs = encode_image_emb(config, metadata, id_mapping, processor, model)
        mean_embs  = (sent_embs + image_embs) / 2
        cat_embs = np.concatenate([sent_embs, image_embs], axis=1)

    mean_emb_path = os.path.join(
        config['data_dir'], f'{os.path.basename(config["sent_emb_model"])}_mean.sent_emb'
    )
    cat_emb_path = os.path.join(
        config['data_dir'], f'{os.path.basename(config["sent_emb_model"])}_cat.sent_emb'
    )

    mean_embs.tofile(mean_emb_path)
    cat_embs.tofile(cat_emb_path)



