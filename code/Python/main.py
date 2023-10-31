import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from keras.models import Sequential
from keras.layers import Dense

# 加载数据集
def load_data(filename):
    # 从CSV文件中加载数据
    data = np.genfromtxt(filename, delimiter=',', skip_header=1)
    X = data[:, :-1]  # 特征数据
    y = data[:, -1]   # 标签数据
    return X, y

# 模型定义
def build_model(input_dim):
    model = Sequential()
    model.add(Dense(128, activation='relu', input_shape=(input_dim,)))
    model.add(Dense(64, activation='relu'))
    model.add(Dense(1, activation='sigmoid'))
    model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
    return model

if __name__ == '__main__':
    # 加载数据集
    X, y = load_data('drug_interactions.csv')

    # 拆分数据集为训练集和测试集
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # 特征数据标准化
    scaler = StandardScaler()
    X_train = scaler.fit_transform(X_train)
    X_test = scaler.transform(X_test)

    # 构建模型
    input_dim = X_train.shape[1]
    model = build_model(input_dim)

    # 训练模型
    model.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))

    # 评估模型
    score = model.evaluate(X_test, y_test, verbose=0)
    print('Test loss:', score[0])
    print('Test accuracy:', score[1])

    # 对新数据进行预测
    new_data = np.array([[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8]])
    new_data = scaler.transform(new_data)
    prediction = model.predict(new_data)
    print('Prediction:', prediction[0][0])
