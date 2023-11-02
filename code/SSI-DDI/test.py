import numpy as np
import torch
from matplotlib import pyplot as plt
from torch import device

import models
from train_script import n_atom_feats, n_atom_hid, rel_total, kge_dim, test_data_loader, do_compute, do_compute_metrics

# 设置设备类型为GPU或CPU
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

# 创建模型对象
model = models.SSI_DDI(n_atom_feats, n_atom_hid, kge_dim, rel_total, heads_out_feat_params=[32, 32, 32, 32],
                       blocks_params=[2, 2, 2, 2])

# 加载训练好的模型参数
model.load_state_dict(torch.load('model.pt'))

# 将模型设置为评估模式
model.eval()

# 初始化变量用于存储预测结果和真实标签
test_probas_pred = []
test_ground_truth = []

# 在不进行梯度计算的情况下，对测试数据进行预测
with torch.no_grad():
    for batch in test_data_loader:
        # 计算预测结果和真实标签
        p_score, n_score, probas_pred, ground_truth = do_compute(batch, device, training=False)

        # 将预测结果和真实标签添加到对应的列表中
        test_probas_pred.append(probas_pred)
        test_ground_truth.append(ground_truth)

# 将预测结果和真实标签转换为numpy数组
test_probas_pred = np.concatenate(test_probas_pred)
test_ground_truth = np.concatenate(test_ground_truth)

# 计算测试集的评估指标
test_acc, test_auc_roc, test_auc_prc = do_compute_metrics(test_probas_pred, test_ground_truth)

# 打印测试集的评估指标
print(f'Test Accuracy: {test_acc:.4f}')
print(f'Test AUC-ROC: {test_auc_roc:.4f}')
print(f'Test AUC-PRC: {test_auc_prc:.4f}')

# 生成柱状图展示测试集的评估指标
metrics = ('Test Accuracy', 'Test AUC-ROC', 'Test AUC-PRC')
values = (test_acc, test_auc_roc, test_auc_prc)
colors = ('blue', 'green', 'red')
plt.bar(metrics, values, color=colors)
plt.ylabel('Metric Values')
plt.title('Model Performance on Test Data')
plt.show()
