if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

alias y="yaourt"
alias yunlock="sudo rm /var/lib/pacman/db.lck"
alias upg="y -Syyu --noconfirm"
alias rem="y -R"
