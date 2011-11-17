function main_colour {
  if [ $? = 0 ]
    then echo -e "\033[1;32m"
    else echo -e "\033[1;31m"
  fi
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       RESET="\[\033[00m\]"
  local       WHITE="\[\033[1;37m\]"
  local        BLUE="\[\033[1;34m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

  if [ $? = 0 ]
    then local MAIN_COLOUR="$LIGHT_GREEN"
  else local MAIN_COLOUR="$LIGHT_RED"
  fi

PS1="${TITLEBAR}\
\$(main_colour)\u@\h$RESET:$BLUE\w$WHITE\$(parse_git_branch)$LIGHT_GRAY\$ "
PS2='> '
PS4='+ '
}
proml
