

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

								更多图标详情参考[Draw Diagrams With Markdown](https://support.typora.io/Draw-Diagrams-With-Markdown/)

> Markdown 好站:
>
> > [公式指导手册](https://www.zybuluo.com/codeep/note/163962)

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

> Jupyter notebook好站:
>
> > [Jupyter Notebook的27个秘诀，技巧和快捷键](https://www.zybuluo.com/hanxiaoyang/note/534296)

------



## Git

```shell
git init
git config --global user.name "Your Name"
git config --global user.email "email@example.com"
git add <file＞
git commit <file>/--all -m "description"
git remote add origin https://github.com/Your Name/respository.git
git push -u origin master
```

```shell
git log (--pretty=oneline)	#显示提交日志
git reset --hard HEAD^ / commit id	#HEAD^表示上一版本
git reflog
```

#### git clone

```shell
git clone <repo>	#克隆仓库的命令格式
```

```shell
git clone <repo> <directory>	#克隆到指定目录
```



### 基本快照

Git的工作就是创建和保存你的项目的快照及与之后的快照进行对比。

#### git diff

- 尚未缓存的改动： **git diff**
- 查看已缓存的改动： **git diff --cached**
- 查看已缓存的与未缓存的所有改动： **git diff HEAD**
- 显示摘要而非整个diff： **git diff --stat**

#### git commit

使用git add命令将想要快照的内容写入缓存区，而执行git commit将缓存区内容添加到仓库中。  

Git为你的每一个提交都记录你的名字与电子邮箱地址，所以第一步需要配置用户名和邮箱地址。

#### git reset HEAD

用于取消已缓存的内容

```shell
git reset HEAD <file>		
```

简而言之，执行 git reset HEAD 以取消之前 git add 添加，但不希望包含在下一提交快照中的缓存。

#### git rm

如果只是简单地从工作目录中手工删除文件，运行 `git status` 时就会在 `Changes not staged for commit` 的提示。

要从 Git 中移除某个文件，就必须要从已跟踪文件清单中移除，然后提交。可以用以下命令完成此项工作

```shell
git rm <file>
git rm -f <file>	#如果删除之前修改过并且已经放到暂存区域的话，则必须要用强制删除选项-f
git rm --cached <file>	
#如果把文件从暂存区域移除，但仍然希望保留在当前工作目录中，换句话说，仅是从跟踪清单中删除，使用 --cached 选项即可
git commit -a -m "rename/delete"		#重命名或删除文件之后的操作
```

#### git mv

git mv 命令用于移动或重命名一个文件、目录、软连接。



### Git 分支管理

```shell
git branch (branchname)		#创建分支命令
git checkout (branchname)	#切换分支命令
```

当你切换分支的时候，Git 会用该分支的最后提交的快照替换你的工作目录的内容， 所以多个分支不需要多个目录

```shell
git merge	#合并分支命令，可以多次合并到统一分支， 也可以选择在合并之后直接删除被并入的分支
```

#### 列出分支

```shell
git branch
```

当你执行 git init 的时候，缺省情况下 Git 就会为你创建"master"分支。

如果我们要手动创建一个分支。执行 git branch (branch name) 即可。

```shell
git checkout -b (branchname)	#创建新分支并立即切换到该分支下，从而在该分支中操作
```

#### 删除分支

```shell
git branch -d (branchname)
```

#### 合并分支

```shell
git merge (branchname)
```

#### 合并冲突

合并并不仅仅是简单的文件添加、移除的操作，Git 也会合并修改。

我们将前一个分支合并到 "master" 分支，一个合并冲突就出现了，接下来我们需要手动去修改它。

在 Git 中，我们可以用 git add 要告诉 Git 文件冲突已经解决



### Git 查看提交历史

```shell
git log
git log --oneline	#查看历史记录的简洁版本
git log --oneline --graph	#用--graph选项，开启拓扑图选项
git log --reverse --oneline		#--reverse逆向显示
git log --autor=name --onelin -5	#查找指定用户的提交日志命令
```



### Git 远程仓库(Github)

```shell
git remote		#查看当前的远程库
```

#### 提取远程仓库

```shell
git fetch		#从远程仓库下载新分支与数据，该命令执行完成后需要执行git merge远程分支到现在分支
git merge		#从远端仓库提取数据并尝试合并到当前分支
#该命令就是执行在git fetch之后紧接着执行git merge远程分支到你的所在的任意分支。
```

假设你配置好了一个远程仓库，并且你想要提取更新的数据，你可以首先执行 **git fetch [alias]** 告诉 Git 去获取它有你没有的数据，然后你可以执行 **git merge [alias]/[branch]** 以将服务器上的任何更新（假设有人这时候推送到服务器了）合并到你的当前分支。

#### 推送到远程仓库

```shell
git push [alias] [branch]
```



> Git 好站:
>
> > [Git教程(易百教程)](https://www.yiibai.com/git/)

------



## Linux

#### 打包压缩相关命令

`tar`				打包压缩

            `-c`			归档文件
    
            `-x`			解压缩文件
    
    　`-t`			查看文件
    
            `-z`			gzip压缩文件
    
        `-j`			bzip2压缩文件
    
        `-v`			显示过程					
    
        `-f`			使用存档文件或设备存档

eg.

`tar -cvf /home/abc.tar /home/abc`			只打包，不压缩

`tar -zcvf /home/abc.tar.gz /home/abc`		打包，并用gzip压缩

`tar -zxvf /home/abc.tar.gz `				解压缩 			

> 可参考[tar命令详解](https://blog.csdn.net/freeking101/article/details/51480295)

用户及用户组管理

`useradd user`								添加用户

`userdel user`								删除用户		

				 `-r`							完全删除家目录	　　
	
	　　　　　      `-f`							强制删除用户



`cat /etc/issue`								查看发行版本

`echo "内容" >> 文件名`						创建带内容的文本

`cp -r test/ newtest`						将目录"test/"下所有文件复制到新目录

`sudo dpkg -i .deb`							安装软件

`sudo apt-get -f install`					安装软件相关依赖

`sudo apt-get -f dist-upgrade`

> Linux 好站:
>
> >  [鳥哥的 Linux 私房菜](http://linux.vbird.org/)　

------



## adb

#### adb常用命令

`adb shell am start -n <packageName>/<activity>`			启动应用

`adb shell am force-stop <packageName>`						停止应用

`adb shell pm list packages`								查看已安装应用

`adb uninstall <packageName>`								卸载应用

