利用bert预训练的中文语言模型进行文本匹配

训练脚本 train.sh

批量测试脚本 predict.sh

利用模型进行单条语句测试 intent.py

chinese_L-12_H-768_A-12为预训练的相关模型和词典

data文件夹中为训练语料，验证语料，测试语料 数据集为LCQMC官方数据


参数说明：
max_seq_length  sentence的最大长度（字）
train_batch_size  batch_size的大小

max_seq_length = 50
eval_accuracy = 0.87207
test_accuracy = 0.86272

max_seq_length = 40
eval_accuracy = 0.88093615
test_accuracy = 0.86256
