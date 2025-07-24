#!/bin/bash



DATASET=Musical_Instruments
TOKEN=rqvae3x256_768/sentence-t5-base_256,256,256,256

#echo "Test Best ${DATASET} ${TOKEN} =================================================="
#L_LIST=(1 2 3 4 5 6 7 8)
#
#for L in "${L_LIST[@]}"; do
#    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
#    CUDA_VISIBLE_DEVICES=0,1,2,3 \
#    accelerate launch \
#        --main_process_port 22139 \
#        --num_processes 4 main.py \
#        --dataset=${DATASET} \
#        --config_file=config/ftconfig_mnt.yaml \
#        --token_prefix=${TOKEN} \
#        --num_layers=${L} \
#        --num_decoder_layers=${L} \
#        --lr=0.005 \
#        --patience=25 \
#        --topk=[5,10,20] \
#        --sem_id_epochs=[]
#done




L=3
CKPT=ckpt/${DATASET}/Jan-18-2025_20-57-101886/Jan-18-2025_20-57-101886.pth


CUDA_VISIBLE_DEVICES=0,1,2,3 \
accelerate launch \
    --main_process_port 41139 \
    --num_processes 4 main.py \
    --dataset=${DATASET} \
    --config_file=config/ftconfig_mnt.yaml \
    --token_prefix=${TOKEN} \
    --num_layers=${L} \
    --num_decoder_layers=${L} \
    --lr=0.005 \
    --epochs=0 \
    --patience=20 \
    --topk=[5,10,20] \
    --pretrained_model=$CKPT \
    --sem_id_epochs=[]




