source ~/.nvm/nvm.sh
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export NODE_ENV=testing
PATH=/usr/local/texlive/2011/bin/x86_64-linux:$PATH
path=/usr/local/sbin:$PATH

# User specific aliases and functions

# color scheem
#cd /home/henry/dotfiles/solarized/ && ./set_dark.sh

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml



alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

[[ -s "/Users/henry/.rvm/scripts/rvm" ]] && source "/Users/henry/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
