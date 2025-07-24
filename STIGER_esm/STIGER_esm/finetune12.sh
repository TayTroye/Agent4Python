



DATASET=Video_Games
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256



CKPT_1L_5T=./ckpt/${DATASET}/Jan-19-2025_14-06-ab38cc/Jan-19-2025_14-06-ab38cc
CKPT_1L_10T=./ckpt/${DATASET}/Jan-18-2025_20-29-0bd077/Jan-18-2025_20-29-0bd077

CKPT_2L_5T=./ckpt/${DATASET}/Jan-19-2025_14-41-dc99dd/Jan-19-2025_14-41-dc99dd
CKPT_2L_10T=./ckpt/${DATASET}/Jan-18-2025_21-10-dcf44d/Jan-18-2025_21-10-dcf44d


CKPT_3L_5T=./ckpt/${DATASET}/Jan-19-2025_15-23-96082b/Jan-19-2025_15-23-96082b
CKPT_3L_10T=./ckpt/${DATASET}/Jan-18-2025_21-53-470901/Jan-18-2025_21-53-470901
CKPT_3L_15T=./ckpt/${DATASET}/Jan-18-2025_22-49-808db4/Jan-18-2025_22-49-808db4
CKPT_3L_20T=./ckpt/${DATASET}/Jan-18-2025_23-46-c5ee36/Jan-18-2025_23-46-c5ee36


CKPT_4L_10T=./ckpt/${DATASET}/Jan-18-2025_20-29-b611f4/Jan-18-2025_20-29-b611f4
CKPT_4L_15T=./ckpt/${DATASET}/Jan-18-2025_21-37-39856c/Jan-18-2025_21-37-39856c
CKPT_4L_20T=./ckpt/${DATASET}/Jan-18-2025_22-47-d68138/Jan-18-2025_22-47-d68138


CKPT_5L_15T=./ckpt/${DATASET}/Jan-18-2025_23-59-e1677d/Jan-18-2025_23-59-e1677d
CKPT_5L_20T=./ckpt/${DATASET}/Jan-19-2025_01-20-fcdef1/Jan-19-2025_01-20-fcdef1



CKPT_6L_15T=./ckpt/${DATASET}/Jan-18-2025_20-29-1c94e7/Jan-18-2025_20-29-1c94e7
CKPT_6L_20T=./ckpt/${DATASET}/Jan-18-2025_22-25-290c4e/Jan-18-2025_22-25-290c4e



CKPT_7L_20T=./ckpt/${DATASET}/Jan-19-2025_00-04-0ebdb3/Jan-19-2025_00-04-0ebdb3
CKPT_7L_25T=./ckpt/${DATASET}/Jan-18-2025_20-29-4c5fbe/Jan-18-2025_20-29-4c5fbe



CKPT_8L_20T=./ckpt/${DATASET}/Jan-18-2025_22-25-57df71/Jan-18-2025_22-25-57df71
CKPT_8L_25T=./ckpt/${DATASET}/Jan-19-2025_00-30-07f942/Jan-19-2025_00-30-07f942



ckpt_epoch=(120 130 140 150 160 170 180 190 200)


L=6
echo "best test $L Layer 20 tokens ========================================================================================"





SEM_ID=9991
CKPT=$CKPT_6L_20T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 25232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig_mnt.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --patience=10 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done









