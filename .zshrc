# 環境を問わない
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
export RSPEC_RETRY_RETRY_COUNT=1
export SPEC_OPTS="--format documentation"
export DIRENV_LOG_FORMAT="" # direnv を静かにする
alias be="bundle exec"
[ -s `which gls` ] && alias ls="gls --color"
[ -s `which rbenv` ] && eval "$(rbenv init -)"
[ -s `which direnv` ] && eval "$(direnv hook zsh)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function load_nvm() {
    source "$NVM_DIR/nvm.sh"
}

[ -v STARTUP_NVM ] && load_nvm && nvm use

function badge() {
    printf "\e]1337;SetBadgeFormat=%s\a"\
    $(echo -n "$1" | base64)
}

### https://github.com/zdharma/zinit
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node \
    zsh-users/zsh-autosuggestions \
    zdharma/fast-syntax-highlighting
### End of Zinit's installer chunk
