if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/ubuntu.zsh
source ~/.zsh/shared/desktop.zsh

# debug ievms
export DEBUG='iectrl:*'
