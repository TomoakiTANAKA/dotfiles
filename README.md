# my dotfiles

## .zshrc

.zsh.d ディレクトリに分割した設定を読み込むため、.zshrc に下記を追加すること
.zsh.d の`*.zsh`ファイルが読み込まれる
読み込み順を保証するために`ls -v`を使ってファイルソート順で読み込めるようにしている。

```
ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $(ls -v $ZSHHOME/*.zsh); do
        [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
```
