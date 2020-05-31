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
PROMPT="%{${fg[green]}%}%n$ %{${reset_color}%}"

# 環境依存
export EDITOR=emacsclient
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

function load_nvm() {
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"
}

function load_zplug() {
    export ZPLUG_HOME=/usr/local/opt/zplug
    source $ZPLUG_HOME/init.zsh
}

function install_zpluged_packages() {
    # Install plugins if there are plugins that have not been installed
    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
}

load_zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
install_zpluged_packages
zplug load --verbose

alias be="bundle exec"
