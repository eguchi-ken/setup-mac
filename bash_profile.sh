export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export NVM_DIR="$HOME/.nvm"
export PATH="/usr/local/sbin:$PATH"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "direnv" ] && eval "$(direnv hook bash)"
[ -s "rbenv" ] && eval "$(rbenv init -)"

export EDITOR=emacsclient
alias be="bundle exec"
alias gg="git grep"
alias ls="gls --color"
PS1='\[\e[0;32m\]\u@\h$ \[\e[00m\]'

export HISTCONTROL=ignoredups
export HISTSIZE=10000
export RSPEC_RETRY_RETRY_COUNT=1
export SPEC_OPTS="--format documentation"
export DIRENV_LOG_FORMAT="" # direnv を静かにする
