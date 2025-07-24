export OPENBLAS_NUM_THREADS=1
export CUDA_VISIBLE_DEVICES=4


echo "Running config mean======================================================="


python main.py \
    --dataset=Office_Products \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256 \
    --sent_emb_model=/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/llm_hf_ckpt/sentence-t5-base \
    --sent_emb_dim=768



python generate_tokens.py \
    --dataset=Office_Products \
    --config_file=config_mnt.yaml \
    --ckpt_name=rqvae3x256 \
    --sent_emb_model=/mnt/nanjingcephfs/project_wx-rec-alg-bdc-exp/bwzheng/llm_hf_ckpt/sentence-t5-base \
    --sent_emb_dim=768

