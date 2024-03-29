### 端末を開く
端末 (コンピュータリテラシーなどで使用しているコマンドを入力する画面)は、左上のメニューの「アプリケーション」 - 「アクセサリ」の中に入っています。

### aptのproxyの設定
学内でLinuxを利用してネットワークと接続するためには、proxyの設定が必要です。
proxyの設定をする前に、aptというプログラムの設定に独自にproxyの設定が書かれていると、
proxyの設定がうまくいかないので、aptのproxy設定を削除しておきます。
まず、rootユーザーになる必要があるので、次のコマンドを実行します。

```
su -
```

続いて、次のコマンドを実行します。ファイルがないと言われた時は、以下の手順を実行する必要はありません。

```
nano /etc/apt/apt.conf
```

もし、以下のような記述があれば、それを削除してください。

```
Acquire::http::Proxy "http://proxy.uec.ac.jp:8080/";
```

Ctrl+oを押して保存した後、Ctrl+xを押して終了してください。


### Linuxに対するproxyの設定
デスクトップの右上に表示されている自分のIDをクリックし、「システム設定」をクリックします。システム設定のウィンドウが開くので、「ネットワーク」をクリックします。

「ネットワークプロキシ」をクリックすると、proxyの設定が開くので、「手動」に切り替えた上で、次のように入力します。

```
HTTPプロキシ : proxy.uec.ac.jp 8080
HTTPSプロキシ : proxy.uec.ac.jp 8080
```


### sudoの設定
続いてsudoというコマンドの設定をします。今の状態だと、rootの力が必要な操作をする際にsuコマンドを使ってrootユーザに化ける必要があります。
そこでsudoというコマンドを代わりに使うことにします。sudoコマンドは、一つのコマンドを実行するときにのみ他のユーザに化けることができるコマンドです。例えば

```
sudo hoge
```

を実行すると、hogeコマンドがrootユーザとして実行されます。sudoを使うと次のようなメリットが有ります。

* rootパスワードを覚えなくて良い
* rootでログインしっぱなしということが起きない
* 実行したコマンドのログを取ってくれるので、事故が起きた時の原因究明がしやすい

sudoを使うためには、sudoを使えるように自分のユーザの属性を変える必要があります。次のコマンドを実行してください。

```
gpasswd -a ユーザ名 sudo
```

実行したら、exitコマンドを2回実行して端末を終了した上で、Debianを再起動してください。再起動すると、sudoコマンドが使えるようになっているはずです (逆に言うと何故か再起動しないと使えない)。

### sudoの利用
sudoを利用する際にパスワードを聞かれますが、ここにはrootのパスワードではなく、自分のパスワードを入力してください。

なお学内から利用する際には、sudoの代わりにsudo -Eを使ってください。-Eを使わないとプロキシの設定が引き継がれず、ネットワークを使ったコマンドが実行できません。

### rubyのインストール
rubyのインストールは以下の手順で行います。

```
sudo apt-get update
sudo apt-get install ruby1.9.3
```

apt-get updateは、debianで使われるプログラムが保管されているインターネット上の場所のリストを更新するコマンドです。これは、頻繁に実行する必要はなく、debianのバージョンが上がった時などにすれば十分です。

apt-get installをする際に、ruby1.9.3ではなくrubyと指定すると、古いバージョンのrubyが入ってしまいます。古いバージョンのrubyは、新しいものと仕様が異なりますので、使わないようにしてください。

### ruby動作の確認
次のコマンドを実行して、Rubyのバージョンが表示されることを確認して下さい。

```
ruby -v
```
