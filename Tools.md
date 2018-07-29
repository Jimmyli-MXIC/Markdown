# 常用工具

## Typora 

### 快捷键

`- + &nbsp;` 			无序列表			// `&nbsp; = blank`

`1. + &nbsp;` 			有序列表

`- [ ] + &nbsp; `			任务列表

`ctrl + shift + F`		代码块			// 需自行配置

`> + &nbsp;`				引用

`ctrl + 数字 `			标题

`ctrl + T `				表格

`[TOC] + Enter `			生成目录

`ctrl + L `				选中一整行

`ctrl + D `				选中单词

`ctrl + E `				选中相同格式的文字

`ctrl + Home`			跳转到文章开头

`ctrl + H`				替换

`ctrl + B`				加粗

`ctrl + I`				斜体

`ctrl + U`				下划线

`alt + shift + 5`		删除线

`ctrl + K`				插入链接

`ctrl + shift + I`		插入图片(直接拖动到指定位置也可)

### 高级方法

`$$ + Enter`				填写公式（只支持行间模式）

`$E=mc^2$`	　$E=mc^2$   	行内模式（需在Markdown中勾选Inline Math)

`==key==`           ==key== 		高亮

#### Flowchart

> ```
> ​```flow
> st=>start: Start
> op=>operation: Your Operation
> cond=>condition: Yes or No?
> e=>end
> 
> st->op->cond
> cond(yes)->e
> cond(no)->op
> ​```
> ```

```flow
st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end

st->op->cond
cond(yes)->e
cond(no)->op
```

​													更多图标详情参考[Draw Diagrams With Markdown](https://support.typora.io/Draw-Diagrams-With-Markdown/)

------



## Jupyter Notebook



### 快捷键

#### 命令模式（Esc开启）

- **Enter** : 转入编辑模式

- **Shift-Enter** : 运行本单元，选中下个单元

- **Ctrl-Enter** : 运行本单元

- **Alt-Enter** : 运行本单元，在其下插入新单元

- **Y** : 单元转入代码状态

- **M** :单元转入markdown状态

- **R** : 单元转入raw状态

- **1** : 设定 1 级标题

- **2** : 设定 2 级标题

- **3** : 设定 3 级标题

- **4** : 设定 4 级标题

- **5** : 设定 5 级标题

- **6** : 设定 6 级标题

- **Up** : 选中上方单元

- **K** : 选中上方单元

- **Down** : 选中下方单元

- **J** : 选中下方单元

- **Shift-K** : 扩大选中上方单元

- **Shift-J** : 扩大选中下方单元

- **A** : 在上方插入新单元

- **B** : 在下方插入新单元

- **X** : 剪切选中的单元

- **C** : 复制选中的单元

- **Shift-V** : 粘贴到上方单元

- **V** : 粘贴到下方单元

- **Z** : 恢复删除的最后一个单元

- **D,D** : 删除选中的单元

- **Shift-M** : 合并选中的单元

- **Ctrl-S** : 文件存盘

- **S** : 文件存盘

- **L** : 转换行号

- **O** : 转换输出

- **Shift-O** : 转换输出滚动

- **Esc** : 关闭页面

- **Q** : 关闭页面

- **H** : 显示快捷键帮助

- **I,I** : 中断Notebook内核

- **0,0** : 重启Notebook内核

- **Shift** : 忽略

- **Shift-Space** : 向上滚动

- **Space** : 向下滚动

#### 编辑模式（Enter启动）

- **Tab** : 代码补全或缩进
- **Shift-Tab** : 提示
- **Ctrl-]** : 缩进
- **Ctrl-[** : 解除缩进
- **Ctrl-A** : 全选
- **Ctrl-Z** : 复原
- **Ctrl-Shift-Z** : 再做
- **Ctrl-Y** : 再做
- **Ctrl-Home** : 跳到单元开头
- **Ctrl-Up** : 跳到单元开头
- **Ctrl-End** : 跳到单元末尾
- **Ctrl-Down** : 跳到单元末尾
- **Ctrl-Left** : 跳到左边一个字首
- **Ctrl-Right** : 跳到右边一个字首
- **Ctrl-Backspace** : 删除前面一个字
- **Ctrl-Delete** : 删除后面一个字
- **Esc** : 进入命令模式
- **Ctrl-M** : 进入命令模式
- **Shift-Enter** : 运行本单元，选中下一单元
- **Ctrl-Enter** : 运行本单元
- **Alt-Enter** : 运行本单元，在下面插入一单元
- **Ctrl-Shift--** : 分割单元
- **Ctrl-Shift-Subtract** : 分割单元
- **Ctrl-S** : 文件存盘
- **Shift** : 忽略
- **Up** : 光标上移或转入上一单元
- **Down** :光标下移或转入下一单元

------



## Git

```shell
git init
git config --global user.name "Your Name"
git config --global user.email "email@example.com"
git add <文件名＞
git commit <文件名>/--all -m "description"
git remote add origin https://github.com/Your Name/respository.git
git push -u origin master
```

```shell
git commit -a -m "rename/delete"		#重命名或删除文件之后的操作
```

```shell
git log (--pretty=oneline)	#显示提交日志
git reset --hard HEAD^ / commit id	#HEAD^表示上一版本
git reflog
```



> Git 好站:
>
> > [Git教程(易百教程)](https://www.yiibai.com/git/)

------



## Linux

#### 打包压缩相关命令

`tar`				打包压缩

​            `-c`			归档文件

​            `-x`			解压缩文件

​	　`-t`			查看文件

​            `-z`			gzip压缩文件

​	    `-j`			bzip2压缩文件

​	    `-v`			显示过程					

​	    `-f`			使用存档文件或设备存档

eg.

`tar -cvf /home/abc.tar /home/abc`			只打包，不压缩

`tar -zcvf /home/abc.tar.gz /home/abc`		打包，并用gzip压缩

`tar -zxvf /home/abc.tar.gz `				解压缩 			

> 可参考[tar命令详解](https://blog.csdn.net/freeking101/article/details/51480295)

#### 用户及用户组管理

`useradd user`								添加用户

`userdel user`								删除用户		

​				 `-r`							完全删除家目录	　　

​	　　　　　      `-f`							强制删除用户

> Linux 好站:
>
> >  [鳥哥的 Linux 私房菜](http://linux.vbird.org/)　
