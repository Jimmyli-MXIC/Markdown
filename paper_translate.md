## FaceNet: A Unified Embedding for Face Recognition and Clustering

> [FaceNet](https://arxiv.org/abs/1503.03832) 

1. 介绍

在论文中讲介绍一个统一的系统包括面部验证,识别和聚类.我们的方法是基于利用深度卷及网络在每张图片学习一个欧氏距离嵌入.在嵌入空间中的L2平方距离直接等于脸部相似度.

图1表示照明和姿势不变性,

FaceNet directly trains its output to be a compact 128-D embedding using a triplet-based loss function based on LMNN.