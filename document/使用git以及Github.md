### Linux Git和Github环境的使用

1.  安装git
> sudo apt-get install git
2.  create a github account
3.  ssh-keygen -t rsa -C "your_email@eamil.com"
4.  open github.com setting Account Settings set SSH Keys id_rsa.pub
5.  test ssh -T git@github.com if you can seee 'You’ve successfully authenticated, but GitHub does not provide shell access'
6.  config you local git
        git config --global user.name "your name"
        git config --global user.email "your email"
7.  clone a project git clone https://github.com/Beggars/bigface.git
8.  

#### resp相关操作
