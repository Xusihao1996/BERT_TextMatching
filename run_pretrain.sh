#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=0,1,2,3 python run_pretraining.py \
  --input_file=tmp/*.tfrecord \
  --output_dir=tmp/run_pretraining_bi_tri_0.5/ \
  --do_train=True \
  --do_eval=True \
  --bert_config_file=chinese_L-12_H-768_A-12/bert_config.json \
  --init_checkpoint=chinese_L-12_H-768_A-12/bert_model.ckpt \
  --train_batch_size=32 \
  --max_seq_length=128 \
  --max_predictions_per_seq=20 \
  --num_train_steps=100000 \
  --num_warmup_steps=10 \
  --learning_rate=2e-5
