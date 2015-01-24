cakephp-playground

Here is my cakephp playground.

how did I make this repo.
---

```
$ git clone https://github.com/borivojevic/cakephp-vagrant.git vagrant
$ git clone git clone https://github.com/cakephp/cakephp.git vagrant/webroot/
$ chmod -R 777 vagrant/webroot/app/tmp
$ ln -s vagrant/webroot/ cakephp
```

usage
---

```
$ cd vagrant
$ vagrant up
```
and access to [http://33.33.33.10/](http://33.33.33.10/)

setting up MySQL
---

```
$ vagrant ssh
vagrant@dev:~$ mysql -u root -p # pass is "root"
mysql> create database playground;
mysql> create database test_playground;
```

Note
---

`vagrant/webroot/` まで潜ってソースを修正するのがイヤで、TOP に Symbolic link を作ってみたんだけど、Sublime Text 3 で Symbolic link folder 内のソースコードを参照するには都度、Refresh folders を実行しないといけないらしく、却ってめんどくさいことになってしまいました。

参考:
[Sublime Forum ・ View topic - Still problem with symbolic link-folders](http://www.sublimetext.com/forum/viewtopic.php?f=3&t=15630)
