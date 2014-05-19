### gitのインストールと設定
rbenvをインストールするためには、gitというツールが必要です。gitをインストールするには、次のコマンドを実行してください。

```
sudo apt-get install git-core
```

gitコマンドを実行して、gitが正しくインストールされていることを確認して下さい。

```
git
```

gitは、システムのproxy設定を見てくれないので、独自にproxyの設定をする必要があります。次のコマンドを実行することで、proxyが設定されます。

```
git config --global http.proxy http://proxy.uec.ac.jp:8080/
git config --global https.proxy http://proxy.uec.ac.jp:8080/
```

proxy設定を解除したいときは、次のコマンドを入力します。

```
git config --global --unset http.proxy
git config --global --unset http.proxy
```

### rbenvのインストールと設定
まず、rbenvを使ってRubyをインストールするために必要なツールをインストールします。

```
sudo apt-get install build-essential bison openssl libreadline6 \
    libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev \
    libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf \
    libc6-dev ncurses-dev
```

まずrbenvをインストールします。

```
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins/
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/
```

以下のコマンドを実行します。

```
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
```

端末 (ターミナル) を再起動します。

以下のコマンドを実行することで、Rubyのインストールが出来ます。
```
rbenv install (バージョン名)
```

rbenvでRubyのインストールをした後は、必ず以下のコマンドを実行して、インストールしたRubyを認識させるようにします。
```
rbenv rehash
```

以下のコマンドを実行することで、rbenvでインストールされているRubyのバージョンを一覧できます。
```
rbenv versions
```

以下のコマンドを実行することで、使用するRubyのバージョンを切り替えられます。
```
rbenv global (バージョン名)
```
