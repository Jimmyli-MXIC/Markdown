### Matplotlib

**根据特定布局创建Figure和subplot**

```python
import matplotlib.pyplot as plt
%matplotlib notebook

fig = plt.figure()	#matplotlib的图像都位于Figure对象中,创建一个新的Figure
'''
不能通过空Figure绘图,必须用add_subplot创建subplot
'''
ax1 = fig.add_subplot(2, 2 ,1)	#图像应该是2×2的,选中的是4个中的第一个
ax2 = fig.add_subplot(2, 2, 2)
ax3 = fig.add_subplot(2, 2, 3)	#绘制出带有三个subplot的Figure

from numpy.random import randn
plt.plot(randn(50).cumsum(), 'k--')  #绘图命令,"k--"是一个线性模型
_ = ax1.hist(randn(100), bins=20, color='k', alpha=0.3)
ax2.scatter(np.arange(30), np.arange(30) + 3 * randn(30))

```

![](/home/jimmyli/Documents/MD/pics/mch8_2.png)

更为简便的方法 `plt.subplots`

```python
import matplotlib.pyplot as plt
#直方图,bins表示直方图的数目
fig, axes = plt.subplots(2, 2, sharex=True, sharey=True)
for i in range(2):
    for j in range(2):
        axes[i, j].hist(randn(500), bins=50, color='k', alpha=0.5)
plt.subplots_adjust(wspace=0, hspace=0)
```

![](/home/jimmyli/Documents/MD/pics/mch8_1.png)

