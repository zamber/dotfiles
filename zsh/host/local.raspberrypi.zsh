if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/ubuntu.zsh
source ~/.zsh/shared/server.zsh

# Fix for unset locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
