#!/bin/bash



DATASET=Musical_Instruments
TOKEN=sentence-t5-base_256,256,256,256_PCA128

echo "Test Best ${DATASET} ${TOKEN} =================================================="
L_LIST=(3)

for L in "${L_LIST[@]}"; do
    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
    CUDA_VISIBLE_DEVICES=0,1,2,3 \
    accelerate launch \
        --main_process_port 22139 \
        --num_processes 4 main.py \
        --dataset=${DATASET} \
        --config_file=config/ftconfig_mnt.yaml \
        --token_prefix=${TOKEN} \
        --num_layers=${L} \
        --num_decoder_layers=${L} \
        --lr=0.005 \
        --epochs=1 \
        --patience=30 \
        --topk=[5,10,20] \
        --sem_id_epochs=[10000]
done


