from datetime import datetime
import time 
import argparse

import torch
from torch import optim
from sklearn import metrics
import pandas as pd
import numpy as np

import models
import custom_loss
from data_preprocessing import DrugDataset, DrugDataLoader, TOTAL_ATOM_FEATS

######################### Parameters ######################

# 创建一个参数解析器
parser = argparse.ArgumentParser()

# 添加一个名为 --n_atom_feats 的命令行参数，表示输入特征的数量
parser.add_argument('--n_atom_feats', type=int, default=TOTAL_ATOM_FEATS, help='num of input features')

# 添加一个名为 --n_atom_hid 的命令行参数，表示隐藏特征的数量
parser.add_argument('--n_atom_hid', type=int, default=64, help='num of hidden features')

# 添加一个名为 --rel_total 的命令行参数，表示相互作用类型的数量
parser.add_argument('--rel_total', type=int, default=86, help='num of interaction types')

# 添加一个名为 --lr 的命令行参数，表示学习率
parser.add_argument('--lr', type=float, default=1e-2, help='learning rate')

# 添加一个名为 --n_epochs 的命令行参数，表示训练的轮数
parser.add_argument('--n_epochs', type=int, default=300, help='num of epochs')

# 添加一个名为 --kge_dim 的命令行参数，表示交互矩阵的维度
parser.add_argument('--kge_dim', type=int, default=64, help='dimension of interaction matrix')

# 添加一个名为 --batch_size 的命令行参数，表示批次大小
parser.add_argument('--batch_size', type=int, default=1024, help='batch size')

# 添加一个名为 --weight_decay 的命令行参数，表示权重衰减
parser.add_argument('--weight_decay', type=float, default=5e-4)

# 添加一个名为 --neg_samples 的命令行参数，表示负样本数量
parser.add_argument('--neg_samples', type=int, default=1)

# 添加一个名为 --data_size_ratio 的命令行参数，表示数据集采样比例
parser.add_argument('--data_size_ratio', type=int, default=1)

# 添加一个名为 --use_cuda 的命令行参数，表示是否使用GPU加速
parser.add_argument('--use_cuda', type=bool, default=True, choices=[0, 1])

# 解析命令行参数，并将结果存储在 args 对象中
args = parser.parse_args()

# 将解析得到的命令行参数赋值给相应的变量
n_atom_feats = args.n_atom_feats
n_atom_hid = args.n_atom_hid
rel_total = args.rel_total
lr = args.lr
# n_epochs = args.n_epochs
n_epochs = 1
kge_dim = args.kge_dim
batch_size = args.batch_size
weight_decay = args.weight_decay
neg_samples = args.neg_samples
data_size_ratio = args.data_size_ratio

# 判断是否使用 GPU 加速，并将相应的设备指定为 'cuda' 或 'cpu'
device = 'cuda' if torch.cuda.is_available() and args.use_cuda else 'cpu'

# 打印输出解析得到的命令行参数
print(args)

############################################################

###### Dataset

# 读取训练集、验证集和测试集的数据文件
df_ddi_train = pd.read_csv('data/ddi_training.csv')
df_ddi_val = pd.read_csv('data/ddi_validation.csv')
df_ddi_test = pd.read_csv('data/ddi_test.csv')

# 将训练集、验证集和测试集的数据转换为元组形式，每个元组包含药物1、药物2和相互作用类型
train_tup = [(h, t, r) for h, t, r in zip(df_ddi_train['d1'], df_ddi_train['d2'], df_ddi_train['type'])]
val_tup = [(h, t, r) for h, t, r in zip(df_ddi_val['d1'], df_ddi_val['d2'], df_ddi_val['type'])]
test_tup = [(h, t, r) for h, t, r in zip(df_ddi_test['d1'], df_ddi_test['d2'], df_ddi_test['type'])]

# 创建训练集、验证集和测试集的数据集对象，并设置数据集采样比例和负样本数量
train_data = DrugDataset(train_tup, ratio=data_size_ratio, neg_ent=neg_samples)
val_data = DrugDataset(val_tup, ratio=data_size_ratio, disjoint_split=False)
test_data = DrugDataset(test_tup, disjoint_split=False)

# 打印输出训练集、验证集和测试集的样本数量
print(f"Training with {len(train_data)} samples, validating with {len(val_data)}, and testing with {len(test_data)}")

# 创建训练集、验证集和测试集的数据加载器对象，并设置批次大小和是否打乱数据顺序
train_data_loader = DrugDataLoader(train_data, batch_size=batch_size, shuffle=True)
val_data_loader = DrugDataLoader(val_data, batch_size=batch_size * 3)
test_data_loader = DrugDataLoader(test_data, batch_size=batch_size * 3)


def do_compute(batch, device, training=True):
    '''
    计算预测结果和真实标签
    * batch: (pos_tri, neg_tri)
    * pos/neg_tri: (batch_h, batch_t, batch_r)
    '''
    probas_pred, ground_truth = [], []
    pos_tri, neg_tri = batch

    # 将数据移动到指定设备上
    pos_tri = [tensor.to(device=device) for tensor in pos_tri]

    # 对正样本进行模型预测并取得预测得分
    p_score = model(pos_tri)
    probas_pred.append(torch.sigmoid(p_score.detach()).cpu())
    ground_truth.append(np.ones(len(p_score)))

    # 将数据移动到指定设备上
    neg_tri = [tensor.to(device=device) for tensor in neg_tri]

    # 对负样本进行模型预测并取得预测得分
    n_score = model(neg_tri)
    probas_pred.append(torch.sigmoid(n_score.detach()).cpu())
    ground_truth.append(np.zeros(len(n_score)))

    # 将预测得分和真实标签转化为numpy数组，并拼接在一起
    probas_pred = np.concatenate(probas_pred)
    ground_truth = np.concatenate(ground_truth)

    return p_score, n_score, probas_pred, ground_truth


def do_compute_metrics(probas_pred, target):
    '''
    计算评估指标
    * probas_pred: 预测得分
    * target: 真实标签
    '''
    # 将预测得分转化为二分类预测结果
    pred = (probas_pred >= 0.5).astype(np.int)

    # 计算准确率、ROC AUC、F1值
    acc = metrics.accuracy_score(target, pred)
    auc_roc = metrics.roc_auc_score(target, probas_pred)
    f1_score = metrics.f1_score(target, pred)

    # 计算精确率-召回率曲线下面积（PR AUC）
    p, r, t = metrics.precision_recall_curve(target, probas_pred)
    auc_prc = metrics.auc(r, p)

    return acc, auc_roc, auc_prc


def train(model, train_data_loader, val_data_loader, loss_fn, optimizer, n_epochs, device, scheduler=None):
    print('Starting training at', datetime.today())
    for i in range(1, n_epochs + 1):
        start = time.time()
        train_loss = 0
        train_loss_pos = 0
        train_loss_neg = 0
        train_probas_pred = []
        train_ground_truth = []
        val_loss = 0
        val_loss_pos = 0
        val_loss_neg = 0
        val_probas_pred = []
        val_ground_truth = []

        for batch in train_data_loader:
            model.train()

            # 计算预测结果和真实标签
            p_score, n_score, probas_pred, ground_truth = do_compute(batch, device)
            train_probas_pred.append(probas_pred)
            train_ground_truth.append(ground_truth)

            # 计算损失函数
            loss, loss_p, loss_n = loss_fn(p_score, n_score)

            # 梯度清零
            optimizer.zero_grad()

            # 反向传播计算梯度
            loss.backward()

            # 更新模型参数
            optimizer.step()

            train_loss += loss.item() * len(p_score)
        train_loss /= len(train_data_loader)

        with torch.no_grad():
            # 将训练集的预测结果和真实标签转换为numpy数组
            train_probas_pred = np.concatenate(train_probas_pred)
            train_ground_truth = np.concatenate(train_ground_truth)

            # 计算训练集的评估指标
            train_acc, train_auc_roc, train_auc_prc = do_compute_metrics(train_probas_pred, train_ground_truth)

            for batch in val_data_loader:
                model.eval()

                # 计算预测结果和真实标签
                p_score, n_score, probas_pred, ground_truth = do_compute(batch, device)
                val_probas_pred.append(probas_pred)
                val_ground_truth.append(ground_truth)

                # 计算损失函数
                loss, loss_p, loss_n = loss_fn(p_score, n_score)
                val_loss += loss.item() * len(p_score)

            val_loss /= len(val_data_loader)

            # 将验证集的预测结果和真实标签转换为numpy数组
            val_probas_pred = np.concatenate(val_probas_pred)
            val_ground_truth = np.concatenate(val_ground_truth)

            # 计算验证集的评估指标
            val_acc, val_auc_roc, val_auc_prc = do_compute_metrics(val_probas_pred, val_ground_truth)

        if scheduler:
            # 调整学习率
            scheduler.step()

        # 打印训练过程中的指标结果
        print(f'Epoch: {i} ({time.time() - start:.4f}s), train_loss: {train_loss:.4f}, val_loss: {val_loss:.4f},'
              f' train_acc: {train_acc:.4f}, val_acc:{val_acc:.4f}')
        print(
            f'\t\ttrain_roc: {train_auc_roc:.4f}, val_roc: {val_auc_roc:.4f}, train_auprc: {train_auc_prc:.4f}, val_auprc: {val_auc_prc:.4f}')


# 创建模型对象
model = models.SSI_DDI(n_atom_feats, n_atom_hid, kge_dim, rel_total, heads_out_feat_params=[32, 32, 32, 32],
                       blocks_params=[2, 2, 2, 2])
# 定义损失函数
loss = custom_loss.SigmoidLoss()
# 定义优化器
optimizer = optim.Adam(model.parameters(), lr=lr, weight_decay=weight_decay)
# 定义学习率调整策略
scheduler = optim.lr_scheduler.LambdaLR(optimizer, lambda epoch: 0.96 ** (epoch))

# 将模型移动到指定设备
model.to(device=device)

# 开始训练
train(model, train_data_loader, val_data_loader, loss, optimizer, n_epochs, device, scheduler)

# 保存模型
torch.save(model.state_dict(), 'model.pt')
