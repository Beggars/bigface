### Linux Git和Github环境的使用

1. 安装git
sudo apt-get install git
2. create a github account
3. ssh-keygen -t rsa -C "your_email@eamil.com"
4. open github.com setting Account Settings set SSH Keys id_rsa.pub test ssh -T git@github.com if you can seee 'You’ve successfully authenticated, but GitHub does not provide shell access'
5. config you local git

    >git config --global user.name "your name"

    >git config --global user.email "your email"

6.  clone a project git clone https://github.com/Beggars/bigface.git


#### 分支创建 推送合并
- 创建dev分支 切换到dev分支
```
git checkout -b dev
git branch ＃ 查看当前分支情况
```
－ 切换回 master 然后合并
```
git checkout master
git merge dev
```
- 删除 dev 分支
```
git branch -d dev
```

- 常用命令
```
Git鼓励大量使用分支：
查看分支：git branch
创建分支：git branch <name>
切换分支：git checkout <name>
创建+切换分支：git checkout -b <name>
合并某分支到当前分支：git merge <name>
删除分支：git branch -d <name>
```
