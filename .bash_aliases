# ==================================
# S e b                       | 2023
# ==================================

# ==============
# CentOS Aliases
# ==============
which yum >/dev/null 2>&1
if [ $? -eq 0 ]; then

alias y="sudo yum"
alias Y="sudo yum install"

fi

# ============
# Arch Aliases
# ============
which pacman >/dev/null 2>&1
if [ $? -eq 0 ]; then

alias p="sudo pacman"
alias P="sudo pacman -S"

fi

# ==============
# Ubuntu Aliases
# ==============
which apt-get >/dev/null 2>&1
if [ $? -eq 0 ]; then

alias a="sudo apt-get"
alias A="sudo apt-get install"

fi

# ============
# Misc Aliases
# ============
alias whatsmyip="echo $(curl ifconfig.me)" # HACK to get newline
alias ref="source ~/.bashrc"
alias s="sudo"
alias n="nano"
alias N="sudo nano"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls="clear; ls -CF"
alias cla="clear; ls -A"
alias cll="clear; ls -alF"
alias pg="ping www.google.com"
