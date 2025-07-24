#!/bin/bash




IDS5=(9996 9997 9998 9999 10000)
IDS10=(9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS15=(9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS20=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS25=(9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS30=(9971 9972 9973 9974 9975 9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS35=(9966 9967 9968 9969 9970 9971 9972 9973 9974 9975 9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS40=(9961 9962 9963 9964 9965 9966 9967 9968 9969 9970 9971 9972 9973 9974 9975 9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS45=(9956 9957 9958 9959 9960 9961 9962 9963 9964 9965 9966 9967 9968 9969 9970 9971 9972 9973 9974 9975 9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)
IDS50=(9951 9952 9953 9954 9955 9956 9957 9958 9959 9960 9961 9962 9963 9964 9965 9966 9967 9968 9969 9970 9971 9972 9973 9974 9975 9976 9977 9978 9979 9980 9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)


DATASET=Industrial_and_Scientific
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256


#CKPT_1L_5T=./ckpt/${DATASET}/Jan-08-2025_20-31-7c1105/Jan-08-2025_20-31-7c1105
#CKPT_1L_10T=./ckpt/${DATASET}/Jan-08-2025_21-04-22eaa5/Jan-08-2025_21-04-22eaa5
#CKPT_1L_15T=./ckpt/${DATASET}/Jan-08-2025_21-40-74b463/Jan-08-2025_21-40-74b463
#
#CKPT_2L_5T=./ckpt/${DATASET}/Jan-08-2025_22-20-d5d2b0/Jan-08-2025_22-20-d5d2b0
#CKPT_2L_10T=./ckpt/${DATASET}/Jan-08-2025_23-10-a89ce7/Jan-08-2025_23-10-a89ce7
#CKPT_2L_15T=./ckpt/${DATASET}/Jan-09-2025_00-02-9866a3/Jan-09-2025_00-02-9866a3

CKPT_3L_5T=./ckpt/${DATASET}/Jan-14-2025_01-17-046167/Jan-14-2025_01-17-046167
#CKPT_3L_10T=./ckpt/${DATASET}/Jan-09-2025_00-59-85ee29/Jan-09-2025_00-59-85ee29
#CKPT_3L_15T=./ckpt/${DATASET}/Jan-09-2025_01-59-50a7ac/Jan-09-2025_01-59-50a7ac
#CKPT_3L_20T=./ckpt/${DATASET}/Jan-09-2025_03-06-114284/Jan-09-2025_03-06-114284
CKPT_3L_25T=./ckpt/${DATASET}/Jan-14-2025_02-13-3d0d8e/Jan-14-2025_02-13-3d0d8e
CKPT_3L_30T=./ckpt/${DATASET}/Jan-14-2025_03-19-ae3ef8/Jan-14-2025_03-19-ae3ef8

CKPT_4L_5T=./ckpt/${DATASET}/Jan-14-2025_04-27-862209/Jan-14-2025_04-27-862209
#CKPT_4L_10T=./ckpt/${DATASET}/Jan-09-2025_04-11-c3a174/Jan-09-2025_04-11-c3a174
#CKPT_4L_15T=./ckpt/${DATASET}/Jan-09-2025_05-18-c46689/Jan-09-2025_05-18-c46689
#CKPT_4L_20T=./ckpt/${DATASET}/Jan-09-2025_06-32-a0e7e2/Jan-09-2025_06-32-a0e7e2

CKPT_5L_10T=./ckpt/${DATASET}/Jan-14-2025_05-30-b90ee7/Jan-14-2025_05-30-b90ee7
#CKPT_5L_15T=./ckpt/${DATASET}/Jan-09-2025_07-44-281b93/Jan-09-2025_07-44-281b93
#CKPT_5L_20T=./ckpt/${DATASET}/Jan-09-2025_09-06-adefdc/Jan-09-2025_09-06-adefdc
#CKPT_5L_25T=./ckpt/${DATASET}/Jan-09-2025_10-25-1f2269/Jan-09-2025_10-25-1f2269


CKPT_6L_5T=./ckpt/${DATASET}/Jan-14-2025_06-43-75f22e/Jan-14-2025_06-43-75f22e
CKPT_6L_10T=./ckpt/${DATASET}/Jan-14-2025_08-00-8d4d90/Jan-14-2025_08-00-8d4d90
#CKPT_6L_15T=./ckpt/${DATASET}/Jan-09-2025_11-48-f55516/Jan-09-2025_11-48-f55516
#CKPT_6L_20T=./ckpt/${DATASET}/Jan-09-2025_13-17-9a1633/Jan-09-2025_13-17-9a1633
#CKPT_6L_25T=./ckpt/${DATASET}/Jan-09-2025_14-44-d04eed/Jan-09-2025_14-44-d04eed
CKPT_6L_30T=./ckpt/${DATASET}/Jan-14-2025_09-20-44619a/Jan-14-2025_09-20-44619a




CKPT_7L_20T=./ckpt/${DATASET}/Jan-14-2025_10-56-15140e/Jan-14-2025_10-56-15140e
CKPT_7L_25T=./ckpt/${DATASET}/Jan-14-2025_12-33-8e710c/Jan-14-2025_12-33-8e710c
CKPT_7L_30T=./ckpt/${DATASET}/Jan-14-2025_14-14-a7f768/Jan-14-2025_14-14-a7f768



CKPT_8L_20T=./ckpt/${DATASET}/Jan-14-2025_16-00-1c99e6/Jan-14-2025_16-00-1c99e6
CKPT_8L_25T=./ckpt/${DATASET}/Jan-14-2025_17-38-3f4c4b/Jan-14-2025_17-38-3f4c4b
CKPT_8L_30T=./ckpt/${DATASET}/Jan-14-2025_19-34-1c5e3f/Jan-14-2025_19-34-1c5e3f





#L=1
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#
#SUF=170.pth
#CKPT=${CKPT_1L_5T}_${SUF}
#IDS="${IDS5[@]}"
##echo ${IDS5[@]}
##echo ${IDS[@]}
#echo "Best Test CKPT_1L_5T ${SUF} ========================================================================================"
#
#
##for sem_id in $IDS; do
##  echo $sem_id
##done
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=120.pth
#CKPT=${CKPT_1L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_1L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#SUF=130.pth
#CKPT=${CKPT_1L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_1L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#
#
#L=2
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#
#SUF=110.pth
#CKPT=${CKPT_2L_5T}_${SUF}
#IDS="${IDS5[@]}"
#echo "Best Test CKPT_2L_5T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#SUF=120.pth
#CKPT=${CKPT_2L_5T}_${SUF}
#IDS="${IDS5[@]}"
#echo "Best Test CKPT_2L_5T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=120.pth
#CKPT=${CKPT_2L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_2L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#SUF=130.pth
#CKPT=${CKPT_2L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_2L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done




L=3
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"


SUF=120.pth
CKPT=${CKPT_3L_5T}_${SUF}
IDS="${IDS5[@]}"
echo "Best Test CKPT_3L_5T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



#SUF=130.pth
#CKPT=${CKPT_3L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_3L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=100.pth
#CKPT=${CKPT_3L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_3L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=90.pth
#CKPT=${CKPT_3L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_3L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#SUF=140.pth
#CKPT=${CKPT_3L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_3L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done


SUF=90.pth
CKPT=${CKPT_3L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_3L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



SUF=100.pth
CKPT=${CKPT_3L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_3L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done






L=4
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"




SUF=110.pth
CKPT=${CKPT_4L_5T}_${SUF}
IDS="${IDS5[@]}"
echo "Best Test CKPT_4L_5T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done





#SUF=130.pth
#CKPT=${CKPT_4L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_4L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=120.pth
#CKPT=${CKPT_4L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_4L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#SUF=110.pth
#CKPT=${CKPT_4L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_4L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done



L=5
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"





#SUF=100.pth
#CKPT=${CKPT_5L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_5L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done




#SUF=100.pth
#CKPT=${CKPT_5L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_5L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=110.pth
#CKPT=${CKPT_5L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_5L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#SUF=90.pth
#CKPT=${CKPT_5L_25T}_${SUF}
#IDS="${IDS25[@]}"
#echo "Best Test CKPT_5L_25T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done









L=6
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"



SUF=130.pth
CKPT=${CKPT_6L_5T}_${SUF}
IDS="${IDS5[@]}"
echo "Best Test CKPT_6L_5T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



SUF=120.pth
CKPT=${CKPT_6L_10T}_${SUF}
IDS="${IDS10[@]}"
echo "Best Test CKPT_6L_10T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



#SUF=110.pth
#CKPT=${CKPT_6L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_6L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=100.pth
#CKPT=${CKPT_6L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_6L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#SUF=80.pth
#CKPT=${CKPT_6L_25T}_${SUF}
#IDS="${IDS25[@]}"
#echo "Best Test CKPT_6L_25T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#
#
#SUF=90.pth
#CKPT=${CKPT_6L_25T}_${SUF}
#IDS="${IDS25[@]}"
#echo "Best Test CKPT_6L_25T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done


SUF=120.pth
CKPT=${CKPT_6L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_6L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done





L=7
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"



SUF=100.pth
CKPT=${CKPT_7L_20T}_${SUF}
IDS="${IDS20[@]}"
echo "Best Test CKPT_7L_20T ${SUF} ========================================================================================"


#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done


SUF=100.pth
CKPT=${CKPT_7L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_7L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



#SUF=110.pth
#CKPT=${CKPT_7L_30T}_${SUF}
#IDS="${IDS30[@]}"
#echo "Best Test CKPT_7L_30T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done







L=8
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"



#SUF=110.pth
#CKPT=${CKPT_8L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_8L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done


SUF=110.pth
CKPT=${CKPT_8L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_8L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



#SUF=90.pth
#CKPT=${CKPT_8L_30T}_${SUF}
#IDS="${IDS30[@]}"
#echo "Best Test CKPT_8L_30T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=$L \
#          --num_decoder_layers=$L \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
