### YOLOv5 交通标志目标检测


针对交通标志体积小、数量多和传统检测算法速度慢等问题，使用 YOLOv5 实现交通标志实时监测。并借助 pyqt5 设计界面进行结果展示。

**实验总体方案**

     
![image](https://github.com/bai-xiaosheng/YOLOv5/assets/68796611/04aad847-0f2e-45e6-917c-c2cae69feab6)



**数据集**    

在TT100K数据集中，已经标注的图片共有9181张，按照数据集中已经划分的图片类别，将6107张照片划分为训练集，3074张照片划分为验证集。  

 ![image](https://github.com/bai-xiaosheng/YOLOv5/assets/68796611/c7ccf722-ab05-43cb-bea7-e28b0234c99b)



**界面**   

![image](https://github.com/bai-xiaosheng/YOLOv5/assets/68796611/a7f2348f-a303-4229-83b0-96f89518e367)  


**实验结果**

![image](https://github.com/bai-xiaosheng/YOLOv5/assets/68796611/5eb53c43-7264-4c53-8ee9-645c22bab970)  
YOLOv5s3.0训练结果  



**功能：**

1. 模型选择
2. 输入选择(本地文件、摄像头、RTSP)；在检测RTSP视频流的时候，尽量不要启用帧间延时，否则会出现很高的延时，用yolo5x模型时，rtsp会很卡，建议抽帧检测, 把main.py中的133-135行注释取消
```python
                    # jump_count += 1
                    # if jump_count % 5 != 0:
                    #     continue
```

3. IoU调整
4. 置信度调整
5. 帧间延时调整
6. 播放/暂停/结束
7. 统计检测结果（显示边框时，支持中文标签）
8. 检测完成后，自动保存检测结果


**使用：**
```bash
# conda创建python虚拟环境
conda create -n yolov5_pyqt5 python=3.8
# 激活环境
conda activate yolov5_pyqt5
# 到项目根目录下
cd ./
# 安装依赖文件
pip install -r requirements.txt
# 将下载好的模型放在pt文件夹下
# 运行main.py
python main.py
```

