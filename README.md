cakephp-playground

Here is my cakephp playground.

how did I make this repo.
---

```
$ git clone https://github.com/borivojevic/cakephp-vagrant.git vagrant
$ git clone https://github.com/cakephp/cakephp.git vagrant/webroot/
$ chmod -R 777 vagrant/webroot/app/tmp
$ ln -s vagrant/webroot/ cakephp
```

### Note

`vagrant/webroot/` まで潜ってソースを修正するのがイヤで、TOP に Symbolic link を作ってみたんだけど、Sublime Text 3 で Symbolic link folder 内のソースコードを参照するには都度、Refresh folders を実行しないといけないらしく、却ってめんどくさいことになってしまいました。

参考:
[Sublime Forum ・ View topic - Still problem with symbolic link-folders](http://www.sublimetext.com/forum/viewtopic.php?f=3&t=15630)

usage
---

### git clone and install submodules

need this process just at first time.

```
$ git clone https://github.com/amazedkoumei/cakephp-playground.git
$ git submodule init
$ git submodule update
$ chmod -R 777 vagrant/webroot/app/tmp
```

#### Note

ファイルパーミッションがなぜか github で無視される。
`git config core.filemode` は `true`。

### daily use

```
$ cd vagrant
$ vagrant up
```

and access to [http://33.33.33.10/](http://33.33.33.10/)

### create a new CakePHP app

use [this version](https://github.com/amazedkoumei/cakephp-playground/releases)


about basement branch
---

creating a new CakePHP app のための branch