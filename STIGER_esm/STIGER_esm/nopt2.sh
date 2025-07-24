#!/bin/bash




#DATASET=Musical_Instruments
#TOKEN=letter3x256_768_001/sentence-t5-base_256,256,256,256
#
#echo "Test Best ${DATASET} ${TOKEN} =================================================="
#L_LIST=(1 2 3 4 5 6)
#
#for L in "${L_LIST[@]}"; do
#    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
#    CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
#    accelerate launch \
#        --main_process_port 21239 \
#        --num_processes 8 main.py \
#        --dataset=${DATASET} \
#        --config_file=config/ftconfig_mnt.yaml \
#        --token_prefix=${TOKEN} \
#        --num_layers=${L} \
#        --num_decoder_layers=${L} \
#        --lr=0.005 \
#        --patience=20 \
#        --topk=[5,10,20] \
#        --sem_id_epochs=[]
#done
#
#
#DATASET=Industrial_and_Scientific
#TOKEN=letter3x256_768_00005/sentence-t5-base_256,256,256,256
#
#echo "Test Best ${DATASET} ${TOKEN} =================================================="
#L_LIST=(1 2 3 4 5 6)
#
#for L in "${L_LIST[@]}"; do
#    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
#    CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
#    accelerate launch \
#        --main_process_port 21239 \
#        --num_processes 8 main.py \
#        --dataset=${DATASET} \
#        --config_file=config/ftconfig_mnt.yaml \
#        --token_prefix=${TOKEN} \
#        --num_layers=${L} \
#        --num_decoder_layers=${L} \
#        --lr=0.005 \
#        --patience=20 \
#        --topk=[5,10,20] \
#        --sem_id_epochs=[]
#done

DATASET=Musical_Instruments
TOKEN=letter3x256_768_001/sentence-t5-base_256,256,256,256
CKPT=ckpt/Musical_Instruments/Feb-01-2025_12-17-765655/Feb-01-2025_12-17-765655.pth
echo "Test Best ${DATASET} ${TOKEN} =================================================="
L_LIST=(3)

for L in "${L_LIST[@]}"; do
    echo "Test Best ${DATASET} ${TOKEN} ${L} Layer =================================================="
    CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
    accelerate launch \
        --main_process_port 21239 \
        --num_processes 8 main.py \
        --dataset=${DATASET} \
        --config_file=config/ftconfig_mnt.yaml \
        --token_prefix=${TOKEN} \
        --epochs=0 \
        --num_layers=${L} \
        --num_decoder_layers=${L} \
        --pretrained_model=$CKPT \
        --lr=0.005 \
        --patience=20 \
        --topk=[5,10,20] \
        --sem_id_epochs=[]
done



