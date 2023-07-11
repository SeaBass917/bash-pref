# ==========================================
# S e b                               | 2023
# ==========================================


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Add personal /bin to path
PATH=~/.local/bin:$PATH

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Color Pallete

# Winter
#c0="\033[38;5;39m"   # Primary
#c1="\033[38;5;33m"   # Secondary
#c2="\033[38;5;195m"  # Turnary
#c3="\033[38;5;111m"  # Accent

# Summer
c0="\033[38;5;214m"  # Primary
c1="\033[38;5;226m"  # Secondary
c2="\033[38;5;190m"  # Turnary
c3="\033[38;5;229m"  # Accent

cX="$(tput sgr0)"

export PS1="\[$c3\][\[$cX\]\[$c1\]\A\[$cX\]\[$c3\]]\[$cX\]\[$c0\]\u\[$cX\]\[$c3\]@\[$cX\]\[$c2\]\h\[$cX\] \W\\$ "


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
