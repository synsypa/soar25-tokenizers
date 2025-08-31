#!/bin/bash

MODEL_PATH=$1

lm_eval --model hf \
        --model_args pretrained="$MODEL_PATH" \
        --tasks blimp,xcopa,squadv2,belebele,hellaswag,winogrande,arithmetic,mgsm_direct,pubmedqa,toxigen,xnli \
        --device cuda:0 \
        --batch_size 16 \
        --seed 42 \
        --output_path results \
        --cache_requests true \
        --trust_remote_code        
