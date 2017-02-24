if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/ubuntu.zsh
source ~/.zsh/shared/desktop.zsh

# debug ievms
export DEBUG='iectrl:*'
