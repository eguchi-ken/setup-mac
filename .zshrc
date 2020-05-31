# 環境を問わない
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export HISTSIZE=1000
export SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_STORE

autoload -Uz colors && colors
PROMPT="${fg[green]}%n$ ${reset_color}"

autoload predict-on
predict-on

# 環境依存
export EDITOR=emacsclient
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# 実行すると遅いので関数定義だけ
function load_nvm() {
  export NVM_DIR="$HOME/.nvm"
  \. "$NVM_DIR/nvm.sh"
}

alias be="bundle exec"
