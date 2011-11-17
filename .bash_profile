export SVN_EDITOR=/usr/bin/nano
export EDITOR='mate -w'

source /Users/theo/.profile

# bash-completion installed by brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

