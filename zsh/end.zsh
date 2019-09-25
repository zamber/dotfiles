if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2mglobal conf $(basename "$0")\e[0m"
fi

ENDFILE=~/.zsh/host/end.`hostname -s`.zsh
if [ -f $ENDFILE ]; then
  source $ENDFILE
else
  # do nothing
fi