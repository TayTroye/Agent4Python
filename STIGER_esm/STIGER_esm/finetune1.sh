#!/bin/bash


#IDS15=(9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#IDS20=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#IDS25=(9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#
#
#DATASET=Musical_Instruments
#TOKEN=sentence-t5-base_256,256,256,256_PCA128
#CKPT_PRE=./ckpt/${DATASET}
#
#CKPT_LIST=(
#"Apr-06-2025_23-37-1b11ec"
#)
#EPOCH_LIST=(60 90)
#
#L=6
#
#
#for CKPT in "${CKPT_LIST[@]}"; do
#    echo "Test Best ${CKPT} =================================================="
#    for EPOCH in "${EPOCH_LIST[@]}"; do
#        FINAL_CKPT=${CKPT_PRE}/${CKPT}/${CKPT}_${EPOCH}.pth
#            for SEM_ID in "${IDS20[@]}"; do
##                SEM_ID=9991
#                CUDA_VISIBLE_DEVICES=0,1,2,3 \
#                accelerate launch \
#                    --main_process_port 12232 \
#                    --num_processes 4 main.py \
#                    --dataset=${DATASET} \
#                    --config_file=config/ftconfig_mnt.yaml \
#                    --token_prefix=${TOKEN} \
#                    --lr=0.0002 \
#                    --warmup_steps=0 \
#                    --num_layers=$L \
#                    --num_decoder_layers=$L \
#                    --epochs=100 \
#                    --pretrained_model=$FINAL_CKPT \
#                    --sem_id_epochs=[$SEM_ID] \
#                    --results_dir=./results/${DATASET}/${CKPT}_${EPOCH}/
#
#        done
#    done
#done
#
#
#DATASET=Musical_Instruments
#TOKEN=sentence-t5-base_256,256,256,256_PCA128
#CKPT_PRE=./ckpt/${DATASET}
#
#CKPT_LIST=(
#"Apr-06-2025_23-44-9f7cb5"
#)
#EPOCH_LIST=(80 100)
#
#L=6
#
#
#for CKPT in "${CKPT_LIST[@]}"; do
#    echo "Test Best ${CKPT} =================================================="
#    for EPOCH in "${EPOCH_LIST[@]}"; do
#        FINAL_CKPT=${CKPT_PRE}/${CKPT}/${CKPT}_${EPOCH}.pth
#            for SEM_ID in "${IDS25[@]}"; do
##                SEM_ID=9988
#                CUDA_VISIBLE_DEVICES=0,1,2,3 \
#                accelerate launch \
#                    --main_process_port 12232 \
#                    --num_processes 4 main.py \
#                    --dataset=${DATASET} \
#                    --config_file=config/ftconfig_mnt.yaml \
#                    --token_prefix=${TOKEN} \
#                    --lr=0.0002 \
#                    --warmup_steps=0 \
#                    --num_layers=$L \
#                    --num_decoder_layers=$L \
#                    --epochs=100 \
#                    --pretrained_model=$FINAL_CKPT \
#                    --sem_id_epochs=[$SEM_ID] \
#                    --results_dir=./results/${DATASET}/${CKPT}_${EPOCH}/
#        done
#    done
#done



#IDS15=(9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#IDS20=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#IDS25=(9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
#
#
#
#DATASET=Musical_Instruments
#TOKEN=sentence-t5-base_256,256,256,256_PCA128
#CKPT_PRE=./ckpt/${DATASET}
#
#CKPT_LIST=(
#"Apr-06-2025_23-44-9f7cb5"
#)
#EPOCH_LIST=(80 90 100)
#
#L=6
#
#
#for CKPT in "${CKPT_LIST[@]}"; do
#    echo "Test Best ${CKPT} =================================================="
#    for EPOCH in "${EPOCH_LIST[@]}"; do
#        FINAL_CKPT=${CKPT_PRE}/${CKPT}/${CKPT}_${EPOCH}.pth
#            for SEM_ID in "${IDS25[@]}"; do
#
#                CUDA_VISIBLE_DEVICES=0,1,2,3 \
#                accelerate launch \
#                    --main_process_port 12232 \
#                    --num_processes 4 main.py \
#                    --dataset=${DATASET} \
#                    --config_file=config/ftconfig_mnt.yaml \
#                    --token_prefix=${TOKEN} \
#                    --lr=0.0002 \
#                    --warmup_steps=0 \
#                    --num_layers=$L \
#                    --num_decoder_layers=$L \
#                    --epochs=100 \
#                    --pretrained_model=$FINAL_CKPT \
#                    --sem_id_epochs=[$SEM_ID]
#        done
#    done
#done



IDS15=(9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS20=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS25=(9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)



DATASET=Video_Games
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256
CKPT_PRE=./ckpt/${DATASET}

CKPT_LIST=(
"Apr-07-2025_01-29-1b9f93"
)
EPOCH_LIST=(170)

L=7


for CKPT in "${CKPT_LIST[@]}"; do
    echo "Test Best ${CKPT} =================================================="
    for EPOCH in "${EPOCH_LIST[@]}"; do
        FINAL_CKPT=${CKPT_PRE}/${CKPT}/${CKPT}_${EPOCH}.pth
            for SEM_ID in "${IDS20[@]}"; do
#                SEM_ID=9991
                CUDA_VISIBLE_DEVICES=4,5,6,7 \
                accelerate launch \
                    --main_process_port 11131 \
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












