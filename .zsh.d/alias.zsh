# グローバルエイリアス
alias -g L='| less'
alias -g H='| head'
alias -g G='| grep'
alias -g GI='| grep -ri'

#
alias dc='docker-compose'

# linux環境のlsを利用する
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# エイリアス
alias lst='ls -ltr'
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'

alias so='source'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias c='cdr'

alias h='fc -lt '%F %T' 1'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'

# IPを指定してssh接続するためのショートカット
ssht() {
    ssh ec2-user@$1 -p 22022 -i ~/.ssh/dev_admin.pem 
}
