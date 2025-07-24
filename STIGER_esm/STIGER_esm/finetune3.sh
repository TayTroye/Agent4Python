#!/bin/bash


IDS15=(9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS20=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS25=(9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)



DATASET=Video_Games
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256
CKPT_PRE=./ckpt/${DATASET}

CKPT_LIST=(
"Apr-07-2025_01-30-e4ce8c"
)
EPOCH_LIST=(150 160)

L=7


for CKPT in "${CKPT_LIST[@]}"; do
    echo "Test Best ${CKPT} =================================================="
    for EPOCH in "${EPOCH_LIST[@]}"; do
        FINAL_CKPT=${CKPT_PRE}/${CKPT}/${CKPT}_${EPOCH}.pth
            for SEM_ID in "${IDS25[@]}"; do

                CUDA_VISIBLE_DEVICES=4,5,6,7 \
                accelerate launch \
                    --main_process_port 26232 \
                    --num_processes 4 main.py \
                    --dataset=${DATASET} \
                    --config_file=config/ftconfig_mnt.yaml \
                    --token_prefix=${TOKEN} \
                    --lr=0.0002 \
                    --warmup_steps=0 \
                    --num_layers=$L \
                    --num_decoder_layers=$L \
                    --epochs=100 \
                    --pretrained_model=$FINAL_CKPT \
                    --sem_id_epochs=[$SEM_ID] \
                    --results_dir=./results/${DATASET}/${CKPT}_${EPOCH}/

        done
    done
done




