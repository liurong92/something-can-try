#Git基本操作
>文章说明：编写该文档是为了方便本屌丝在突然忘记的状态下马上记忆起，为以后的不时之须所用。

##Git简介
Git是一款免费、开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。是一个开源的分布式版本控制系统，用以有效、高速的处理从很小到非常大的项目版本管理。

##基本操作

###初次使用Git的配置
#####1.用户信息
首先是要配置你的个人用户名和电子邮箱地址。
>特别重要，应为每次提交都会用到的。所以提醒用户名要慎重的填写，而这个邮箱就写你当时注册GitHub的邮箱。

```
$ git config --global user.name "liurong"
$ git config --global user.email liurong@xxx.com
```

#####2.文本编辑器
Git 需要你输入一些额外消息的时候，会自动调用一个外部文本编辑器给你用。默认会使用操作系统指定的默认编辑器，一般可能会是 Vi 或者 Vim。
```
$ git config --global core.editor 编辑器名称
```

#####3.配置密钥
```
$ ssh-keygen -t rsa -C "您的邮箱地址"
```
>在回车中会提示你输入一个密码，这个密码会在你提交项目时使用，如果为空的话提交项目时则不用输入。（而后，你可以在github上添加你的密钥。）

您可以在你本机系统盘下，您的用户文件夹里发现一个.ssh文件，其中的id_rsa.pub文件里储存的即为刚刚生成的ssh密钥。

#####4.查看配置信息
```
$ git config --list
```
>如何获取Git帮助，使用`git help config 或者 git --help`

###新建仓库
```
$ git init
//初始化

$ git status
//获取状态

$ git add [file]
//.或*代表全部添加

$ git commit -m "message"
//此处注意乱码

$ git remote add origin git@github.com:liurong92/git_usage.git
//添加源(在第一此上传到github时要输入，其余在本库中的操作，不用输入此句)

$ git push [-u origin master]
//push同时设置默认跟踪分支（如有分枝变动时要输入和第一次时要输入）
```

###克隆库
```
$ git clone git@github.com:liurong92/git_usage.git
//自动生成库名

$ git clone git@github.com:liurong92/git_usage.git mypro
//克隆到自定义文件夹
```

###本地一些基本操作
#####1.文件操作
```
$ git add [name]
//.或* 跟踪新文件

$ rm [name] 或者 git rm [name]
//.或* 移除文件

git rm -f [name]
//.或* 移除文件

$ git rm --cached [name]
//.或* 取消跟踪

$ git mv [name——from] [name——to]
//重命名跟踪文件
```
#####2.commit基本操作
```
$ git commit
//提交更新

$ git commit -m 'message'
//提交一次更新

$ git commit -a
//跳过使用暂存区域，把所有已经跟踪过的文件暂存起来一并提交

$ git commit --amend
//修改最后一次提交
```
#####3.分支操作
```
$ git reset HEAD *
//取消已经暂存的文件

$ git checkout -- file
//取消对文件的修改（从暂存区去除file）

$ git checkout branch|tag|commit -- file_name
//从仓库取出file覆盖当前分支

$ git checkout -- .
//从暂存区去除文件覆盖工作区
```
>`git diff`可以查看提交前后的不同，`git status`每次`git add`前和后都可以使用，查看文件状态。`git log`可以查看提交日志文件。

###分支上的操作
#####1.branch相关操作
```
$ git branch
//列出本地分支

$ git branch -r
//列出远端分支

$ git branch -a
//列出所有分支

$ git branch -v
//查看各个分支最后一个提交对象的信息

$ git branch --merge
//查看已经合并到当前分支的分支

$ git branch --no-merge
//查看为合并到当前分支的分支

$ git branch test
//新建test分支

$ git branch -d test
//删除test分支

$ git branch -D test
//强制删除test分支
```

#####2.checkout相关操作
```
$ git checkout test
//切换到test分支

$ git checkout -b test
//新建+切换到test分支

$ git checkout -b test dev
//基于dev新建test分支，并切换
```
#####3.其他分支操作
```
$ git merge test
//将test分支合并到当前分支

$ git rebase master
//将master分之上超前的提交，变基到当前分支
```
>>基本总结这里，不会的可以参考以下网站。

[Git Book](http://git-scm.com/book/en/v2)
[Git教程](http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)
