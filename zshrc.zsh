export DOTFILES_ZSH_DEBUG=false

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

export DOTFILES_BASEDIR=~/.dotfiles

source $DOTFILES_BASEDIR/antigen.zsh
source $DOTFILES_BASEDIR/local.zsh
