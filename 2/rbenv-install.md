### rbenvのインストールと設定

まずrbenvをインストールします。

```
sudo apt-get install rbenv
```

以下のコマンドを実行します。

```
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

端末 (ターミナル) を再起動します。

以下のコマンドを実行することで、rbenvでインストールされているRubyのバージョンを一覧できます。
```
rbenv versions
```

以下のコマンドを実行することで、使用するRubyのバージョンを切り替えられます。
```
rbenv global (バージョン名)
```

以下のコマンドを実行することで、Rubyのインストールが出来ます。
```
rbenv install (バージョン名)
```
rbenvでRubyのインストールをした後は、必ず以下のコマンドを実行して、インストールしたRubyを認識させるようにします。
```
rbenv rehash
```