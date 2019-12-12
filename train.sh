#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=2,3 python run_classifier.py \
  --data_dir=data \
  --task_name=sim \
  --vocab_file=chinese_L-12_H-768_A-12/vocab.txt \
  --bert_config_file=chinese_L-12_H-768_A-12/bert_config.json \
  --output_dir=tmp/sim_model_bi_0.3 \
  --do_train=true \
  --do_eval=true \
  --init_checkpoint=tmp/run_pretraining_bi_0.3/model.ckpt-100000 \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0
