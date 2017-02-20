export DOTFILES_ZSH_DEBUG=true

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

source ~/dotfiles/antigen.zsh

source ~/dotfiles/local.zsh
