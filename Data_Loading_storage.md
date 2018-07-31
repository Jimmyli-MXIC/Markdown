# 数据加载、存储与文件格式

> ch6-pydata-book
#### 读取文本格式的数据
```python
df = pd.read_csv('examples/ex1.csv')
df = pd.read_table('examples/ex1.csv', sep=',')
```
|      | a    | b    | c    | d    | message |
| ---- | ---- | ---- | ---- | ---- | ------- |
| 0    | 1    | 2    | 3    | 4    | hello   |
| 1    | 5    | 6    | 7    | 8    | world   |
| 2    | 9    | 10   | 11   | 12   | foo     |

