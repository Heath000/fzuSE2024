import sys
import json
import numpy as np
import math as mt

def grey_model_predict(X0, forecast_steps):
    # 累加生成序列
    X1 = np.cumsum(X0)

    # 生成均值序列
    M = [(X1[i] + X1[i - 1]) / 2 for i in range(1, len(X1))]

    # 最小二乘法求解参数
    Y = np.array(X0[1:]).reshape(-1, 1)
    B = np.vstack([-np.array(M), np.ones(len(M))]).T
    beta = np.linalg.inv(B.T.dot(B)).dot(B.T).dot(Y)
    a, b = beta[0, 0], beta[1, 0]
    const = b / a

    # 预测模型生成累加预测值序列 F
    F = [(X0[0] - const) * mt.exp(-a * k) + const for k in range(len(X0) + forecast_steps)]

    # 累加预测序列还原，得到预测序列
    x_hat = [F[0]]
    for i in range(1, len(F)):
        x_hat.append(F[i] - F[i - 1])

    # 返回预测部分结果
    return x_hat[len(X0):]

try:
    # 从命令行接收 JSON 数据
    input_data = json.loads(sys.argv[1])

    # 获取输入数据和预测步长
    data = input_data.get("data", [])
    forecast_steps = input_data.get("forecast_steps", 5)

    # 执行灰色预测
    predictions = grey_model_predict(data, forecast_steps)
    
    # 输出预测结果
    print(json.dumps(predictions))
except Exception as e:
    # 如果出错，输出错误信息
    print(json.dumps({"error": str(e)}))
