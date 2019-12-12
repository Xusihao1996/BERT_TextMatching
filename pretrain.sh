 #!/usr/bin/env bash

python3.6 create_pretraining_data.py \
  --input_file=wiki_zh/AA/new2_02 \
  --output_file=tmp/tf_examples5.tfrecord \
  --vocab_file=chinese_L-12_H-768_A-12/vocab.txt \
  --do_lower_case=True \
  --max_seq_length=128 \
  --max_predictions_per_seq=20 \
  --random_seed=12345 \
  --dupe_factor=10 \
  --masked_lm_prob=0.15 \
  --short_seq_prob=0.1 \
