#!/bin/bash


D_LIST=(Office_Products)
T_LIST=(
"letter3x256_768_01/sentence-t5-base_256,256,256,256"
"letter3x256_768_003/sentence-t5-base_256,256,256,256"
"letter3x256_768_001/sentence-t5-base_256,256,256,256"
"letter3x256_768_0003/sentence-t5-base_256,256,256,256"
"letter3x256_768_0001/sentence-t5-base_256,256,256,256"
"letter3x256_768_00003/sentence-t5-base_256,256,256,256"
"letter3x256_768_00001/sentence-t5-base_256,256,256,256"
)

for DATASET in "${D_LIST[@]}"; do
for TOKEN in "${T_LIST[@]}"; do
echo "Test Best ${DATASET} ${TOKEN} =================================================="
L_LIST=(3)

for L in "${L_LIST[@]}"; do
#    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
    CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
    accelerate launch \
        --main_process_port 21139 \
        --num_processes 8 main.py \
        --dataset=${DATASET} \
        --config_file=config/ftconfig_mnt.yaml \
        --token_prefix=${TOKEN} \
        --num_layers=${L} \
        --num_decoder_layers=${L} \
        --lr=0.005 \
        --patience=20 \
        --topk=[5,10,20] \
        --sem_id_epochs=[]
done
done
done

