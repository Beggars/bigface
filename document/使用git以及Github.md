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


#### resp相关操作
