# Matplotlib

## matplotlib API入门

#### 根据特定布局创建Figure和subplot

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
plt.plot(randn(50).cumsum(), 'k--')  #发出一条绘图命令,matplotlib就会在最后一个用过的subplot(如果没有就创建一个)上绘制.绘图命令,"k--"是一个线性模型
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

#### 刻度、标签和图

```python
fig = plt.figure(); ax = fig.add_subplot(1, 1, 1)
ax.plot(randn(1000).cumsum())
ticks = ax.set_xticks([0, 250, 500, 750, 1000])
labels = ax.set_xticklabels(['one', 'two', 'three', 'four', 'five'],
                           rotation=30, fontsize='small')
ax.set_title('My first matplotlib plot')
ax.set_xlabel('Stages')
```

![](/home/jimmyli/Documents/MD/pics/mch8_4.png)

#### 添加图例

```python
fig = plt.figure(); ax = fig.add_subplot(1, 1, 1)
ax.plot(randn(1000).cumsum(), 'k', label='one')
ax.plot(randn(1000).cumsum(), 'k--', label='two')
ax.plot(randn(1000).cumsum(), 'k.', label='three')
ax.legend(loc='best')	#添加图例
```

![](/home/jimmyli/Documents/MD/pics/mch8_5.png)

#### 注解以及在Subplot上绘图

> 2008-2009年金融危机期间的重要日期 

```python
from datetime import datetime
import pandas as pd
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

data = pd.read_csv('examples/spx.csv', index_col=0, parse_dates=True)  # 解析日期
spx = data['SPX']

spx.plot(ax=ax, style='k-')

crisis_data = [
    (datetime(2007, 10, 11), 'Peak of bull market'),
    (datetime(2008, 3, 12), 'Bear Stearns Fails'),
    (datetime(2008, 9, 15), 'Lehman Bankruptcy')
]

for date, label in crisis_data:
    ax.annotate(label, xy=(date, spx.asof(date) + 50),
               xytext=(date, spx.asof(date) + 200),
                arrowprops=dict(facecolor='black'),
                horizontalalignment='left', verticalalignment='top')
print(spx.asof(datetime(2007, 10, 11)))
print(datetime(2007, 10, 11))
# 放大到2007-2010
ax.set_xlim(['1/1/2007', '1/1/2011'])
ax.set_ylim([600, 1800])

ax.set_title('Important dates in 2008-2009 financial crisis')
```

![](/home/jimmyli/Documents/MD/pics/mch8_3.png)

绘图

```python
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

rect = plt.Rectangle((0.2, 0.75), 0.4, 0.15, color='k', alpha=0.3)
circ = plt.Circle((0.7, 0.2), 0.15, color='b', alpha=0.3)
pgon = plt.Polygon([[0.15, 0.15], [0.35, 0.4], [0.2, 0.6]], color='g', alpha=0.5)
#Polygon多边形

ax.add_patch(rect)
ax.add_patch(circ)
ax.add_patch(pgon)

fig.savefig('figpath.png', dpi=400, bbox_inches='tight')	#保存图片
plt.close('all')
```

![](/home/jimmyli/Documents/MD/pics/mch8_6.png)

## pandas中的绘图函数

> #### Plotting with pandas and seaborn

#### 线性图

```python
from pandas import Series
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
s = Series.from_csv('out (1).csv')

s.plot(ax=ax)
ax.set_xlim([0.4, 1])
ax.annotate('Peakvalue (%.3f,%.3f)' % (s.idxmax(),s.values.max()), xy=(s.idxmax(), s.values.max() - 0.02),
           xytext=(s.idxmax(), s.values.max() - 0.1),
            arrowprops=dict(facecolor='black',width = 1,headwidth = 4, ),
            horizontalalignment='left', verticalalignment='top')

```

![](/home/jimmyli/Documents/MD/pics/mch8_7.png)

#### 柱形图

```python
#Series
fig, axes = plt.subplots(2, 1)

data = Series(abs(randn(16)), index=list('abcdefghijklmnop'))

data.plot(kind='bar', ax=axes[0], color='k', alpha=0.7)		#垂直柱形图
data.plot(kind='barh', ax=axes[1], color='k', alpha=0.7)	#水平柱形图
```

![](/home/jimmyli/Documents/MD/pics/mch8_8.png)

```python
#DataFrame
tips = pd.read_csv('examples/tips.csv')
party_counts = pd.crosstab(tips['day'], tips['size'])
party_counts = party_counts.loc[:, 2:5]
# Normalize to sum to 1
party_pcts = party_counts.div(party_counts.sum(1), axis=0)

party_pcts.plot.bar(stacked = True) 	#stacked堆积
```

![](/home/jimmyli/Documents/MD/pics/mch8_10.png)



```python
import seaborn as sns
tips['tip_pct'] = tips['tip'] / (tips['total_bill'] - tips['tip'])
tips.head()
sns.barplot(x='tip_pct', y='day', data=tips, orient='h')
sns.set(style="whitegrid")
```

![](/home/jimmyli/Documents/MD/pics/mch8_11.png)

#### 直方图和密度图

```python
fig, axes = plt.subplots(2, 1, sharex=True)
axes[0].hist(tips['tip_pct'],bins=50)
tips['tip_pct'].plot.density()
```

![](/home/jimmyli/Documents/MD/pics/mch8_12.png)

```python
comp1 = np.random.normal(0, 1, size=200)
comp2 = np.random.normal(10, 2, size=200)
values = Series(np.concatenate([comp1, comp2]))
sns.distplot(values, bins=100, color='k')
```

![](/home/jimmyli/Documents/MD/pics/mch8_13.png)

#### 散布图

> 散布图是观察两个一维数据序列之间的关系的有效手段

```python
macro = pd.read_csv('examples/macrodata.csv')
data = macro[['cpi', 'm1', 'tbilrate', 'unemp']]
trans_data = np.log(data).diff().dropna()
trans_data[-5:]

sns.regplot('m1', 'unemp', data=trans_data)
plt.title('Changes in log %s versus log %s' % ('m1', 'unemp'))
```

![](/home/jimmyli/Documents/MD/pics/mch8_14.png)

```python
sns.pairplot(trans_data, diag_kind='kde', plot_kws={'alpha': 0.2})
```

![](/home/jimmyli/Documents/MD/pics/mch8_15.png)

#### Facet Grids and Categorical Data

```python
sns.factorplot(x='day', y='tip_pct', hue='time', col='smoker',
               kind='bar', data=tips[tips.tip_pct < 1])
```

![](/home/jimmyli/Documents/MD/pics/mch8_16.png)

```python
sns.factorplot(x='day', y='tip_pct', row='time',
               col='smoker',
               kind='bar', data=tips[tips.tip_pct < 1])
```

![](/home/jimmyli/Documents/MD/pics/mch8_17.png)

```python
sns.factorplot(x='tip_pct', y='day', kind='box',
               data=tips[tips.tip_pct < 0.5])
```

![](/home/jimmyli/Documents/MD/pics/mch8_18.png)