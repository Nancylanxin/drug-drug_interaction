import random
import csv

# 特征的数目
num_features = 8
# 样本的数目
num_samples = 1000

# 打开CSV文件进行写操作
with open('drug_interactions.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)

    # 写入特征列标题
    writer.writerow(['feature' + str(i+1) for i in range(num_features)] + ['label'])

    # 生成并写入样本数据
    for i in range(num_samples):
        # 随机生成特征数据
        features = [random.uniform(0, 1) for _ in range(num_features)]
        # 随机生成标签数据，这里简单设置为0或1
        label = random.randint(0, 1)
        # 将特征和标签数据写入CSV文件中
        writer.writerow(features + [label])
