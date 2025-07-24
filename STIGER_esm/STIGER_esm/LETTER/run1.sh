export OPENBLAS_NUM_THREADS=1
export CUDA_VISIBLE_DEVICES=6


CKPT_NAME=letter3x256_768_01
ALPHA=0.1
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME


CKPT_NAME=letter3x256_768_003
ALPHA=0.03
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME



CKPT_NAME=letter3x256_768_001
ALPHA=0.01
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME


CKPT_NAME=letter3x256_768_0003
ALPHA=0.003
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME




CKPT_NAME=letter3x256_768_0001
ALPHA=0.001
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME


CKPT_NAME=letter3x256_768_00003
ALPHA=0.0003
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME


CKPT_NAME=letter3x256_768_00001
ALPHA=0.0001
python main.py \
    --dataset=Office_Products \
    --config_file=config.yaml \
    --ckpt_name=$CKPT_NAME \
    --alpha=$ALPHA
python generate_tokens.py --dataset=Office_Products --config_file=config.yaml --ckpt_name=$CKPT_NAME

