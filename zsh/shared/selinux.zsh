
if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

alias audit="sudo cat /var/log/audit/audit.log | audit2why"
