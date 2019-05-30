# Work binds
alias 'curtir'='$HOME/Documents/profissional/curtir/scripts/todo.sh'
alias 'emacs'='emacs -nw -q --load ~/.emacs.d/shell-init.el'
alias 'sudo'='sudo '
alias 'vim'='echo "comendo o cu de quem ta lendo"'
alias 'suco'='sudo'
# enable bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# default editor
export EDITOR="emacs -nw -q --load ~/.emacs.d/shell-init.el"

# Emacs terminal with same color scheeme

# enable colors in terminal
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# enable venv for working enviroment (CSC)
alias 'venv'='source ~/Documents/profissional/curtir/csc-api/.venv/bin/activate'
alias 'cscweb'='cd ~/Documents/profissional/curtir/csc-web/ && yarn ng serve'
alias 'cscapi'='cd ~/Documents/profissional/curtir/csc-api/ && venv && apys -s'
