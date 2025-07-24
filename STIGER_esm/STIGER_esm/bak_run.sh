#!/bin/bash




sem_id_epoch=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)

SUF=.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_100.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"






SUF=_120.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"



SUF=_150.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_160.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_170.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_180.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_190.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-01-f352b8/Dec-30-2024_21-01-f352b8${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


echo "Test ========================================================================================"
echo "Test ========================================================================================"
echo "Test ========================================================================================"





sem_id_epoch=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)

SUF=.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_100.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"






SUF=_120.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"



SUF=_150.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_160.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_170.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_180.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_190.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_09-45-a5c76d/Dec-31-2024_09-45-a5c76d${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21133 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


#!/bin/bash


sleep 4500

sem_id_epoch=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)

SUF=.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_100.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"






SUF=_120.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"



SUF=_150.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_160.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_170.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_180.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_190.pth
CKPT=./ckpt/Musical_Instruments/Dec-30-2024_21-00-91d8f3/Dec-30-2024_21-00-91d8f3${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


echo "Test ========================================================================================"
echo "Test ========================================================================================"
echo "Test ========================================================================================"





sem_id_epoch=(9981 9982 9983 9984 9985 9986 9987 9988 9989 9990 9991 9992 9993 9994 9995 9996 9997 9998 9999 10000)

SUF=.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"


#SUF=_100.pth
#CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}
#
#
#for sem_id in "${sem_id_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=0,1,2,3 \
#      accelerate launch \
#          --main_process_port 21132 \
#          --num_processes 4 main.py \
#          --dataset=Musical_Instruments \
#          --config_file=config/ftconfig.yaml \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --pretrained_model=$CKPT \
#          --sem_id_epochs=[$sem_id]
#done
#
#
#
#echo "Test lr=0.0002 $CKPT ========================================================================================"






SUF=_120.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done



echo "Test lr=0.0002 $CKPT ========================================================================================"



SUF=_150.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_160.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_170.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"




SUF=_180.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"


SUF=_190.pth
CKPT=./ckpt/Musical_Instruments/Dec-31-2024_11-02-109a78/Dec-31-2024_11-02-109a78${SUF}


for sem_id in "${sem_id_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=0,1,2,3 \
      accelerate launch \
          --main_process_port 21132 \
          --num_processes 4 main.py \
          --dataset=Musical_Instruments \
          --config_file=config/ftconfig.yaml \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --pretrained_model=$CKPT \
          --sem_id_epochs=[$sem_id]
done


echo "Test lr=0.0002 $CKPT ========================================================================================"







CUDA_VISIBLE_DEVICES=6,7,8,9 \
accelerate launch \
    --main_process_port 21139 \
    --num_processes 4 main.py \
    --dataset=Musical_Instruments \
    --config_file=config/ftconfig.yaml \
    --lr=0.005 \
    --patience=20 \
    --train_batch_size=512 \
    --num_layers=4 \
    --num_decoder_layers=4 \
    --token_prefix=letter3x256_768_001/sentence-t5-base_256,256,256,256 \
    --sem_id_epochs=[] \
    --max_item_seq_len=50 \
    --test_num_beams=20



CUDA_VISIBLE_DEVICES=6,7,8,9 \
accelerate launch \
    --main_process_port 21139 \
    --num_processes 4 main.py \
    --dataset=Industrial_and_Scientific \
    --config_file=config/ftconfig.yaml \
    --lr=0.005 \
    --patience=20 \
    --train_batch_size=512 \
    --num_layers=4 \
    --num_decoder_layers=4 \
    --token_prefix=letter3x256_768_00005/sentence-t5-base_256,256,256,256 \
    --sem_id_epochs=[] \
    --max_item_seq_len=50 \
    --test_num_beams=20


CUDA_VISIBLE_DEVICES=6,7,8,9 \
accelerate launch \
    --main_process_port 21139 \
    --num_processes 4 main.py \
    --dataset=Video_Games \
    --config_file=config/ftconfig.yaml \
    --lr=0.005 \
    --patience=20 \
    --train_batch_size=512 \
    --num_layers=4 \
    --num_decoder_layers=4 \
    --token_prefix=letter3x256_768_01/sentence-t5-base_256,256,256,256 \
    --sem_id_epochs=[] \
    --max_item_seq_len=50 \
    --test_num_beams=20





CKPT_1L_5T=./ckpt/${DATASET}/Jan-16-2025_22-32-c61156/Jan-16-2025_22-32-c61156
CKPT_1L_10T=./ckpt/${DATASET}/Jan-16-2025_23-42-4c001d/Jan-16-2025_23-42-4c001d


CKPT_2L_5T=./ckpt/${DATASET}/Jan-17-2025_00-54-917be2/Jan-17-2025_00-54-917be2
CKPT_2L_10T=./ckpt/${DATASET}/Jan-17-2025_02-37-8051d1/Jan-17-2025_02-37-8051d1


CKPT_3L_10T=./ckpt/${DATASET}/Jan-17-2025_04-22-07f513/Jan-17-2025_04-22-07f513
CKPT_3L_15T=./ckpt/${DATASET}/Jan-17-2025_06-25-c3aacf/Jan-17-2025_06-25-c3aacf
CKPT_3L_20T=./ckpt/${DATASET}/Jan-17-2025_08-32-7ef323/Jan-17-2025_08-32-7ef323


CKPT_4L_10T=./ckpt/${DATASET}/Jan-17-2025_10-44-ba0af4/Jan-17-2025_10-44-ba0af4
CKPT_4L_15T=./ckpt/${DATASET}/Jan-17-2025_12-58-fdb22f/Jan-17-2025_12-58-fdb22f
CKPT_4L_20T=./ckpt/${DATASET}/Jan-17-2025_15-18-d65a4a/Jan-17-2025_15-18-d65a4a


CKPT_5L_15T=./ckpt/${DATASET}/Jan-17-2025_17-43-0f858f/Jan-17-2025_17-43-0f858f
CKPT_5L_20T=./ckpt/${DATASET}/Jan-17-2025_20-15-2885d9/Jan-17-2025_20-15-2885d9


CKPT_6L_10T=./ckpt/${DATASET}/Jan-17-2025_12-10-bc1ac0/Jan-17-2025_12-10-bc1ac0
CKPT_6L_15T=./ckpt/${DATASET}/Jan-17-2025_14-49-6c0566/Jan-17-2025_14-49-6c0566
CKPT_6L_20T=./ckpt/${DATASET}/Jan-17-2025_17-21-db7d58/Jan-17-2025_17-21-db7d58
CKPT_6L_25T=./ckpt/${DATASET}/Jan-17-2025_20-15-4bec0f/Jan-17-2025_20-15-4bec0f



CKPT_7L_25T=./ckpt/${DATASET}/Jan-17-2025_23-21-3d94f0/Jan-17-2025_23-21-3d94f0
CKPT_7L_30T=./ckpt/${DATASET}/Jan-18-2025_02-35-6fdffe/Jan-18-2025_02-35-6fdffe



CKPT_8L_25T=./ckpt/${DATASET}/Jan-18-2025_05-57-e58ce6/Jan-18-2025_05-57-e58ce6
CKPT_8L_30T=./ckpt/${DATASET}/Jan-18-2025_09-29-ae26af/Jan-18-2025_09-29-ae26af








DATASET=Video_Games
TOKEN=rqvae3x256_deep_128_ema/sentence-t5-base_256,256,256,256


CKPT_1L_5T=./ckpt/${DATASET}/Jan-16-2025_22-32-c61156/Jan-16-2025_22-32-c61156
CKPT_1L_10T=./ckpt/${DATASET}/Jan-16-2025_23-42-4c001d/Jan-16-2025_23-42-4c001d


CKPT_2L_5T=./ckpt/${DATASET}/Jan-17-2025_00-54-917be2/Jan-17-2025_00-54-917be2
CKPT_2L_10T=./ckpt/${DATASET}/Jan-17-2025_02-37-8051d1/Jan-17-2025_02-37-8051d1


CKPT_3L_10T=./ckpt/${DATASET}/Jan-17-2025_04-22-07f513/Jan-17-2025_04-22-07f513
CKPT_3L_15T=./ckpt/${DATASET}/Jan-17-2025_06-25-c3aacf/Jan-17-2025_06-25-c3aacf
CKPT_3L_20T=./ckpt/${DATASET}/Jan-17-2025_08-32-7ef323/Jan-17-2025_08-32-7ef323


CKPT_4L_10T=./ckpt/${DATASET}/Jan-17-2025_10-44-ba0af4/Jan-17-2025_10-44-ba0af4
CKPT_4L_15T=./ckpt/${DATASET}/Jan-17-2025_12-58-fdb22f/Jan-17-2025_12-58-fdb22f
CKPT_4L_20T=./ckpt/${DATASET}/Jan-17-2025_15-18-d65a4a/Jan-17-2025_15-18-d65a4a


CKPT_5L_15T=./ckpt/${DATASET}/Jan-17-2025_17-43-0f858f/Jan-17-2025_17-43-0f858f
CKPT_5L_20T=./ckpt/${DATASET}/Jan-17-2025_20-15-2885d9/Jan-17-2025_20-15-2885d9


CKPT_6L_10T=./ckpt/${DATASET}/Jan-17-2025_12-10-bc1ac0/Jan-17-2025_12-10-bc1ac0
CKPT_6L_15T=./ckpt/${DATASET}/Jan-17-2025_14-49-6c0566/Jan-17-2025_14-49-6c0566
CKPT_6L_20T=./ckpt/${DATASET}/Jan-17-2025_17-21-db7d58/Jan-17-2025_17-21-db7d58
CKPT_6L_25T=./ckpt/${DATASET}/Jan-17-2025_20-15-4bec0f/Jan-17-2025_20-15-4bec0f



CKPT_7L_25T=./ckpt/${DATASET}/Jan-17-2025_23-21-3d94f0/Jan-17-2025_23-21-3d94f0
CKPT_7L_30T=./ckpt/${DATASET}/Jan-18-2025_02-35-6fdffe/Jan-18-2025_02-35-6fdffe



CKPT_8L_25T=./ckpt/${DATASET}/Jan-18-2025_05-57-e58ce6/Jan-18-2025_05-57-e58ce6
CKPT_8L_30T=./ckpt/${DATASET}/Jan-18-2025_09-29-ae26af/Jan-18-2025_09-29-ae26af


ckpt_epoch=(120 130 140 150 160 170 180 190 200)


L=8
echo "best test $L Layer 25/30 tokens ========================================================================================"




SEM_ID=9988
CKPT=$CKPT_8L_25T

for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig_mnt.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --patience=7 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

SEM_ID=9985
CKPT=$CKPT_8L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=4,5,6,7 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig_mnt.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=$L \
          --num_decoder_layers=$L \
          --epochs=100 \
          --patience=7 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

#sleep 3000


ckpt_epoch=(90 100 110 120 130 140 150)

DATASET=Musical_Instruments
TOKEN=sentence-t5-base_256,256,256,256_PCA128

#CKPT_1L_5T=./ckpt/${DATASET}/Jan-08-2025_20-29-187b9e/Jan-08-2025_20-29-187b9e
#CKPT_1L_10T=./ckpt/${DATASET}/Jan-08-2025_21-13-3ba5d2/Jan-08-2025_21-13-3ba5d2
#CKPT_1L_15T=./ckpt/${DATASET}/Jan-08-2025_21-58-fddb54/Jan-08-2025_21-58-fddb54
#
#CKPT_2L_5T=./ckpt/${DATASET}/Jan-08-2025_22-46-23ba49/Jan-08-2025_22-46-23ba49
#CKPT_2L_10T=./ckpt/${DATASET}/Jan-08-2025_23-51-e149e5/Jan-08-2025_23-51-e149e5
#CKPT_2L_15T=./ckpt/${DATASET}/Jan-09-2025_00-57-6108ce/Jan-09-2025_00-57-6108ce


CKPT_3L_5T=./ckpt/${DATASET}/Jan-14-2025_00-04-6c74de/Jan-14-2025_00-04-6c74de
#CKPT_3L_10T=./ckpt/${DATASET}/Jan-09-2025_02-06-9d311d/Jan-09-2025_02-06-9d311d
#CKPT_3L_15T=./ckpt/${DATASET}/Jan-09-2025_03-24-c76a9e/Jan-09-2025_03-24-c76a9e
#CKPT_3L_20T=./ckpt/${DATASET}/Jan-09-2025_04-44-c0d046/Jan-09-2025_04-44-c0d046
CKPT_3L_25T=./ckpt/${DATASET}/Jan-14-2025_01-18-eb94e3/Jan-14-2025_01-18-eb94e3
CKPT_3L_30T=./ckpt/${DATASET}/Jan-14-2025_02-46-944bc0/Jan-14-2025_02-46-944bc0

CKPT_4L_5T=./ckpt/${DATASET}/Jan-14-2025_04-13-7eea15/Jan-14-2025_04-13-7eea15
#CKPT_4L_10T=./ckpt/${DATASET}/Jan-09-2025_06-07-b564e4/Jan-09-2025_06-07-b564e4
#CKPT_4L_15T=./ckpt/${DATASET}/Jan-09-2025_07-32-36cb86/Jan-09-2025_07-32-36cb86
#CKPT_4L_20T=./ckpt/${DATASET}/Jan-09-2025_08-57-2bd94a/Jan-09-2025_08-57-2bd94a


CKPT_5L_10T=./ckpt/${DATASET}/Jan-14-2025_05-33-a147eb/Jan-14-2025_05-33-a147eb
#CKPT_5L_15T=./ckpt/${DATASET}/Jan-09-2025_10-28-119105/Jan-09-2025_10-28-119105
#CKPT_5L_20T=./ckpt/${DATASET}/Jan-09-2025_12-05-1ded3f/Jan-09-2025_12-05-1ded3f
#CKPT_5L_25T=./ckpt/${DATASET}/Jan-09-2025_13-46-c9bf30/Jan-09-2025_13-46-c9bf30

CKPT_6L_5T=./ckpt/${DATASET}/Jan-14-2025_07-07-6695de/Jan-14-2025_07-07-6695de
CKPT_6L_10T=./ckpt/${DATASET}/Jan-14-2025_08-47-89d718/Jan-14-2025_08-47-89d718
#CKPT_6L_15T=./ckpt/${DATASET}/Jan-09-2025_15-36-c82c4d/Jan-09-2025_15-36-c82c4d
#CKPT_6L_20T=./ckpt/${DATASET}/Jan-09-2025_17-22-09fd72/Jan-09-2025_17-22-09fd72
#CKPT_6L_25T=./ckpt/${DATASET}/Jan-09-2025_19-13-e71905/Jan-09-2025_19-13-e71905
CKPT_6L_30T=./ckpt/${DATASET}/Jan-14-2025_10-31-a6a882/Jan-14-2025_10-31-a6a882



CKPT_7L_20T=./ckpt/${DATASET}/Jan-14-2025_12-32-09fdb3/Jan-14-2025_12-32-09fdb3
CKPT_7L_25T=./ckpt/${DATASET}/Jan-14-2025_14-35-d95af1/Jan-14-2025_14-35-d95af1
CKPT_7L_30T=./ckpt/${DATASET}/Jan-14-2025_17-00-7b6d3d/Jan-14-2025_17-00-7b6d3d



CKPT_8L_20T=./ckpt/${DATASET}/Jan-14-2025_19-26-d1f4e1/Jan-14-2025_19-26-d1f4e1
CKPT_8L_25T=./ckpt/${DATASET}/Jan-14-2025_21-43-ebdb04/Jan-14-2025_21-43-ebdb04
CKPT_8L_30T=./ckpt/${DATASET}/Jan-15-2025_00-03-187e58/Jan-15-2025_00-03-187e58



#echo "best test 1Layer 5/10/15 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_1L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9996
#CKPT=$CKPT_1L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_1L_15T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#echo "best test 2Layer 5/10/15 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_2L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9996
#CKPT=$CKPT_2L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_2L_15T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done












#echo "best test 3Layer 5/10/15/2025/30 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_3L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done

#SEM_ID=9996
#CKPT=$CKPT_3L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_3L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_3L_20T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done


#SEM_ID=9988
#CKPT=$CKPT_3L_25T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9985
#CKPT=$CKPT_3L_30T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#echo "best test 4Layer 5/10/15/20 tokens ========================================================================================"
#
#
#
#SEM_ID=9998
#CKPT=$CKPT_4L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done



#SEM_ID=9996
#CKPT=$CKPT_4L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_4L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_4L_20T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done



#echo "best test 5Layer 10/15/20/25 tokens ========================================================================================"
#
#
#SEM_ID=9996
#CKPT=$CKPT_5L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done




#SEM_ID=9993
#CKPT=$CKPT_5L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_5L_20T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9988
#CKPT=$CKPT_5L_25T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done




#echo "best test 6Layer 5/10/15/20/25/30 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_6L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9996
#CKPT=$CKPT_6L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done

#SEM_ID=9993
#CKPT=$CKPT_6L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_6L_20T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9988
#CKPT=$CKPT_6L_25T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21232 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done

SEM_ID=9985
CKPT=$CKPT_6L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done





echo "best test 7Layer 20/25/30 tokens ========================================================================================"



SEM_ID=9991
CKPT=$CKPT_7L_20T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9988
CKPT=$CKPT_7L_25T

for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

SEM_ID=9985
CKPT=$CKPT_7L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done





echo "best test 8Layer 20/25/30 tokens ========================================================================================"



SEM_ID=9991
CKPT=$CKPT_8L_20T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9988
CKPT=$CKPT_8L_25T

for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

SEM_ID=9985
CKPT=$CKPT_8L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21232 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done







ckpt_epoch=(90 100 110 120 130 140 150)

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


#echo "best test 1Layer 5/10/15 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_1L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9996
#CKPT=$CKPT_1L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_1L_15T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=1 \
#          --num_decoder_layers=1 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#echo "best test 2Layer 5/10/15 tokens ========================================================================================"
#
#
#SEM_ID=9998
#CKPT=$CKPT_2L_5T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9996
#CKPT=$CKPT_2L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_2L_15T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=2 \
#          --num_decoder_layers=2 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done












echo "best test 3Layer 5/10/15/2025/30 tokens ========================================================================================"


SEM_ID=9998
CKPT=$CKPT_3L_5T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=3 \
          --num_decoder_layers=3 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

#SEM_ID=9996
#CKPT=$CKPT_3L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_3L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_3L_20T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=3 \
#          --num_decoder_layers=3 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done


SEM_ID=9988
CKPT=$CKPT_3L_25T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=3 \
          --num_decoder_layers=3 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9985
CKPT=$CKPT_3L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=3 \
          --num_decoder_layers=3 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done


echo "best test 4Layer 5/10/15/20 tokens ========================================================================================"



SEM_ID=9998
CKPT=$CKPT_4L_5T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=4 \
          --num_decoder_layers=4 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



#SEM_ID=9996
#CKPT=$CKPT_4L_10T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9993
#CKPT=$CKPT_4L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_4L_20T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=4 \
#          --num_decoder_layers=4 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done



echo "best test 5Layer 10/15/20/25 tokens ========================================================================================"


SEM_ID=9996
CKPT=$CKPT_5L_10T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=5 \
          --num_decoder_layers=5 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done




#SEM_ID=9993
#CKPT=$CKPT_5L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_5L_20T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9988
#CKPT=$CKPT_5L_25T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=5 \
#          --num_decoder_layers=5 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done




echo "best test 6Layer 5/10/15/20/25/30 tokens ========================================================================================"


SEM_ID=9998
CKPT=$CKPT_6L_5T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9996
CKPT=$CKPT_6L_10T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

#SEM_ID=9993
#CKPT=$CKPT_6L_15T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#
#SEM_ID=9991
#CKPT=$CKPT_6L_20T
#
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done
#
#
#
#SEM_ID=9988
#CKPT=$CKPT_6L_25T
#
#for ckpt_id in "${ckpt_epoch[@]}"; do
#      CUDA_VISIBLE_DEVICES=5,6,7,8 \
#      accelerate launch \
#          --main_process_port 21231 \
#          --num_processes 4 main.py \
#          --dataset=${DATASET} \
#          --config_file=config/ftconfig.yaml \
#          --token_prefix=${TOKEN} \
#          --lr=0.0002 \
#          --warmup_steps=0 \
#          --num_layers=6 \
#          --num_decoder_layers=6 \
#          --epochs=100 \
#          --patience=5 \
#          --pretrained_model=${CKPT}_${ckpt_id}.pth \
#          --sem_id_epochs=[$SEM_ID]
#done

SEM_ID=9985
CKPT=$CKPT_6L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=6 \
          --num_decoder_layers=6 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done





echo "best test 7Layer 20/25/30 tokens ========================================================================================"



SEM_ID=9991
CKPT=$CKPT_7L_20T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9988
CKPT=$CKPT_7L_25T

for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

SEM_ID=9985
CKPT=$CKPT_7L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=7 \
          --num_decoder_layers=7 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done





echo "best test 8Layer 20/25/30 tokens ========================================================================================"



SEM_ID=9991
CKPT=$CKPT_8L_20T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done



SEM_ID=9988
CKPT=$CKPT_8L_25T

for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done

SEM_ID=9985
CKPT=$CKPT_8L_30T


for ckpt_id in "${ckpt_epoch[@]}"; do
      CUDA_VISIBLE_DEVICES=5,6,7,8 \
      accelerate launch \
          --main_process_port 21231 \
          --num_processes 4 main.py \
          --dataset=${DATASET} \
          --config_file=config/ftconfig.yaml \
          --token_prefix=${TOKEN} \
          --lr=0.0002 \
          --warmup_steps=0 \
          --num_layers=8 \
          --num_decoder_layers=8 \
          --epochs=100 \
          --patience=5 \
          --pretrained_model=${CKPT}_${ckpt_id}.pth \
          --sem_id_epochs=[$SEM_ID]
done




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


DATASET=Musical_Instruments
TOKEN=sentence-t5-base_256,256,256,256_PCA128

#CKPT_1L_5T=./ckpt/${DATASET}/Jan-08-2025_20-29-187b9e/Jan-08-2025_20-29-187b9e
#CKPT_1L_10T=./ckpt/${DATASET}/Jan-08-2025_21-13-3ba5d2/Jan-08-2025_21-13-3ba5d2
#CKPT_1L_15T=./ckpt/${DATASET}/Jan-08-2025_21-58-fddb54/Jan-08-2025_21-58-fddb54
#
#CKPT_2L_5T=./ckpt/${DATASET}/Jan-08-2025_22-46-23ba49/Jan-08-2025_22-46-23ba49
#CKPT_2L_10T=./ckpt/${DATASET}/Jan-08-2025_23-51-e149e5/Jan-08-2025_23-51-e149e5
#CKPT_2L_15T=./ckpt/${DATASET}/Jan-09-2025_00-57-6108ce/Jan-09-2025_00-57-6108ce


CKPT_3L_5T=./ckpt/${DATASET}/Jan-14-2025_00-04-6c74de/Jan-14-2025_00-04-6c74de
#CKPT_3L_10T=./ckpt/${DATASET}/Jan-09-2025_02-06-9d311d/Jan-09-2025_02-06-9d311d
#CKPT_3L_15T=./ckpt/${DATASET}/Jan-09-2025_03-24-c76a9e/Jan-09-2025_03-24-c76a9e
#CKPT_3L_20T=./ckpt/${DATASET}/Jan-09-2025_04-44-c0d046/Jan-09-2025_04-44-c0d046
CKPT_3L_25T=./ckpt/${DATASET}/Jan-14-2025_01-18-eb94e3/Jan-14-2025_01-18-eb94e3
CKPT_3L_30T=./ckpt/${DATASET}/Jan-14-2025_02-46-944bc0/Jan-14-2025_02-46-944bc0

CKPT_4L_5T=./ckpt/${DATASET}/Jan-14-2025_04-13-7eea15/Jan-14-2025_04-13-7eea15
#CKPT_4L_10T=./ckpt/${DATASET}/Jan-09-2025_06-07-b564e4/Jan-09-2025_06-07-b564e4
#CKPT_4L_15T=./ckpt/${DATASET}/Jan-09-2025_07-32-36cb86/Jan-09-2025_07-32-36cb86
#CKPT_4L_20T=./ckpt/${DATASET}/Jan-09-2025_08-57-2bd94a/Jan-09-2025_08-57-2bd94a


CKPT_5L_10T=./ckpt/${DATASET}/Jan-14-2025_05-33-a147eb/Jan-14-2025_05-33-a147eb
#CKPT_5L_15T=./ckpt/${DATASET}/Jan-09-2025_10-28-119105/Jan-09-2025_10-28-119105
#CKPT_5L_20T=./ckpt/${DATASET}/Jan-09-2025_12-05-1ded3f/Jan-09-2025_12-05-1ded3f
#CKPT_5L_25T=./ckpt/${DATASET}/Jan-09-2025_13-46-c9bf30/Jan-09-2025_13-46-c9bf30

CKPT_6L_5T=./ckpt/${DATASET}/Jan-14-2025_07-07-6695de/Jan-14-2025_07-07-6695de
CKPT_6L_10T=./ckpt/${DATASET}/Jan-14-2025_08-47-89d718/Jan-14-2025_08-47-89d718
#CKPT_6L_15T=./ckpt/${DATASET}/Jan-09-2025_15-36-c82c4d/Jan-09-2025_15-36-c82c4d
#CKPT_6L_20T=./ckpt/${DATASET}/Jan-09-2025_17-22-09fd72/Jan-09-2025_17-22-09fd72
#CKPT_6L_25T=./ckpt/${DATASET}/Jan-09-2025_19-13-e71905/Jan-09-2025_19-13-e71905
CKPT_6L_30T=./ckpt/${DATASET}/Jan-14-2025_10-31-a6a882/Jan-14-2025_10-31-a6a882



CKPT_7L_20T=./ckpt/${DATASET}/Jan-14-2025_12-32-09fdb3/Jan-14-2025_12-32-09fdb3
CKPT_7L_25T=./ckpt/${DATASET}/Jan-14-2025_14-35-d95af1/Jan-14-2025_14-35-d95af1
CKPT_7L_30T=./ckpt/${DATASET}/Jan-14-2025_17-00-7b6d3d/Jan-14-2025_17-00-7b6d3d



CKPT_8L_20T=./ckpt/${DATASET}/Jan-14-2025_19-26-d1f4e1/Jan-14-2025_19-26-d1f4e1
CKPT_8L_25T=./ckpt/${DATASET}/Jan-14-2025_21-43-ebdb04/Jan-14-2025_21-43-ebdb04
CKPT_8L_30T=./ckpt/${DATASET}/Jan-15-2025_00-03-187e58/Jan-15-2025_00-03-187e58




#L=1
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#echo "Best Test Layer ${L} ========================================================================================"
#
#SUF=200.pth
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#SUF=200.pth
#CKPT=${CKPT_1L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_1L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#SUF=170.pth
#CKPT=${CKPT_1L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_1L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_2L_5T}_${SUF}
#IDS="${IDS5[@]}"
#echo "Best Test CKPT_2L_5T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#SUF=130.pth
#CKPT=${CKPT_2L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_2L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_2L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_2L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#SUF=130.pth
#CKPT=${CKPT_2L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_2L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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



SUF=110.pth
CKPT=${CKPT_3L_5T}_${SUF}
IDS="${IDS5[@]}"
echo "Best Test CKPT_3L_5T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_3L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_3L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_3L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_3L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
CKPT=${CKPT_3L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_3L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



SUF=110.pth
CKPT=${CKPT_3L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_3L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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
#CKPT=${CKPT_4L_10T}_${SUF}
#IDS="${IDS10[@]}"
#echo "Best Test CKPT_4L_10T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_4L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_4L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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



SUF=100.pth
CKPT=${CKPT_5L_10T}_${SUF}
IDS="${IDS10[@]}"
echo "Best Test CKPT_5L_10T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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
#CKPT=${CKPT_5L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_5L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_5L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_5L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_5L_25T}_${SUF}
#IDS="${IDS25[@]}"
#echo "Best Test CKPT_5L_25T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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


SUF=100.pth
CKPT=${CKPT_6L_5T}_${SUF}
IDS="${IDS5[@]}"
echo "Best Test CKPT_6L_5T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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
CKPT=${CKPT_6L_10T}_${SUF}
IDS="${IDS10[@]}"
echo "Best Test CKPT_6L_10T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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







#SUF=100.pth
#CKPT=${CKPT_6L_15T}_${SUF}
#IDS="${IDS15[@]}"
#echo "Best Test CKPT_6L_15T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_6L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_6L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
#CKPT=${CKPT_6L_25T}_${SUF}
#IDS="${IDS25[@]}"
#echo "Best Test CKPT_6L_25T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



#SUF=100.pth
#CKPT=${CKPT_7L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_7L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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
CKPT=${CKPT_7L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_7L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



SUF=130.pth
CKPT=${CKPT_7L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_7L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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


SUF=90.pth
CKPT=${CKPT_7L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_7L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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







L=8
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"
echo "Best Test Layer ${L} ========================================================================================"



#SUF=90.pth
#CKPT=${CKPT_8L_20T}_${SUF}
#IDS="${IDS20[@]}"
#echo "Best Test CKPT_8L_20T ${SUF} ========================================================================================"
#
#
#for sem_id in $IDS; do
#      CUDA_VISIBLE_DEVICES=1,2,3,4 \
#      accelerate launch \
#          --main_process_port 21132 \
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



SUF=80.pth
CKPT=${CKPT_8L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_8L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



SUF=90.pth
CKPT=${CKPT_8L_25T}_${SUF}
IDS="${IDS25[@]}"
echo "Best Test CKPT_8L_25T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



SUF=80.pth
CKPT=${CKPT_8L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_8L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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



SUF=90.pth
CKPT=${CKPT_8L_30T}_${SUF}
IDS="${IDS30[@]}"
echo "Best Test CKPT_8L_30T ${SUF} ========================================================================================"


for sem_id in $IDS; do
      CUDA_VISIBLE_DEVICES=1,2,3,4 \
      accelerate launch \
          --main_process_port 21132 \
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


