
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias spotify='spotify --force-device-scale-factor=1.6'

# DFKI scripts and configurations (JBOSS - Wildfly)
alias ssh-burns='ssh deployer@134.96.72.58'
alias werner-front='cd ~/Documents/04-Job/00-Werner/werner-frontend/ &&  git checkout development && npm run dev'
alias werner-admin='cd ~/Documents/04-Job/00-Werner/werner-admin/ && npm run dev'
alias werner-back='~/Documents/04-Job/00-Werner/backend-deploy.sh'
alias werner-db='~/Documents/04-Job/00-Werner/orientdb-3.0.34/bin/server.sh'
export JBOSS_HOME=/run/media/parducci/Ntfs/Documents/04-Job/00-Werner/wildfly-20.0.1.Final
export PATH=$PATH:$JBOSS_HOME/bin

# Virtualenv path
export VENV_PATH=/home/parducci/.local/bin
export PATH=$PATH:$VENV_PATH

# PostgreSQL path
PATH=/usr/local/pgsql/bin:$PATH
export PATH

# Fitness App keys
export SECRET_KEY="1512d1ba43db50927706716ce4bcab5f107819559d02f630"
export DEBUG_VALUE="True"

