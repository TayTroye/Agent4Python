#!/bin/bash




DATASET=Video_Games
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256

echo "Test Best ${DATASET} ${TOKEN} =================================================="
L_LIST=(1 2 3 4 5 6 7 8)

for L in "${L_LIST[@]}"; do
    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
    CUDA_VISIBLE_DEVICES=4,5,6,7 \
    accelerate launch \
        --main_process_port 21239 \
        --num_processes 4 main.py \
        --dataset=${DATASET} \
        --config_file=config/ftconfig_mnt.yaml \
        --token_prefix=${TOKEN} \
        --num_layers=${L} \
        --num_decoder_layers=${L} \
        --lr=0.005 \
        --patience=20 \
        --topk=[5,10,20] \
        --sem_id_epochs=[10000]
done


