export OPENBLAS_NUM_THREADS=1
export CUDA_VISIBLE_DEVICES=4



echo "Running config mean======================================================="


python main.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_mean \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_mean \
    --sent_emb_dim=512



python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_mean \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_mean \
    --sent_emb_dim=512


echo "Running config cat======================================================="


python main.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_cat \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_cat \
    --sent_emb_dim=1024



python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_cat \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_cat \
    --sent_emb_dim=1024


echo "Running config======================================================="


python main.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256 \
    --sent_emb_model=/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/llm_hf_ckpt/sentence-t5-base \
    --sent_emb_dim=768



python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256 \
    --sent_emb_model=/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/llm_hf_ckpt/sentence-t5-base \
    --sent_emb_dim=768















python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_mean \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_mean \
    --sent_emb_dim=512


python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256_clip_cat \
    --sent_emb_model=llm_hf_ckpt/clip-vit-base-patch32_cat \
    --sent_emb_dim=1024

python generate_tokens.py \
    --dataset=Video_Games \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256 \
    --sent_emb_model=/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/llm_hf_ckpt/sentence-t5-base \
    --sent_emb_dim=768

