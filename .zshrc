#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# =========
# 環境変数
# =========
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"

# =========
# 分割したzshファイルの読み込み
# =========
ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $(ls -v $ZSHHOME/*.zsh); do
        [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# Pathの設定順番に注意
export PATH="$HOME/bin":"/usr/local/bin":"$PATH"

# add NodeBrew bin
#
export NODEBREW_ROOT=$HOME/.nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

#
# add rbenv
#
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# add flutter
export PATH=$HOME/Library/flutter/bin:$PATH
export PATH=$HOME/development/flutter/bin:$PATH

# add yq
export PATH="/usr/local/opt/yq@3/bin:$PATH"

# add pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=~/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/development/google-cloud-sdk/path.zsh.inc' ]; then . '~/development/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/development/google-cloud-sdk/completion.zsh.inc' ]; then . '~/development/google-cloud-sdk/completion.zsh.inc'; fi
