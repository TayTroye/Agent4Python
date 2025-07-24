


DATASET=Musical_Instruments
TOKEN=sentence-t5-base_256,256,256,256_PCA128

IDS20=[9981,9982,9983,9984,9985,9986,9987,9988,9989,9990,9991,9992,9993,9994,9995,9996,9997,9998,9999,10000]

START_LSIT=(60)
INTERVAL_LSIT=(30)
TAU_LIST=(0.1 0.3 1.0 3.0 10.0)

for START in "${START_LSIT[@]}"; do
    for INTERVAL in "${INTERVAL_LSIT[@]}"; do
        STAGE=[$START,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL,$INTERVAL]
        for TAU in "${TAU_LIST[@]}"; do
            CUDA_VISIBLE_DEVICES=4,5,6,7 \
            accelerate launch \
                --main_process_port 22232 \
                --num_processes 4 main_less.py \
                --dataset=$DATASET \
                --config_file=config/ptconfig_mnt.yaml \
                --token_prefix=$TOKEN \
                --lr=0.005 \
                --epochs=200 \
                --num_layers=6 \
                --num_decoder_layers=6 \
                --save_interval=10 \
                --patience=50 \
                --eval_interval=1 \
                --val_ratio=0.5 \
                --val_delay=199 \
                --sem_id_epochs=$IDS20 \
                --epoch_per_stage=$STAGE \
                --load_best_for_next_stage=False \
                --accumulate=True \
                --tau=$TAU
        done
    done
done


