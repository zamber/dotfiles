export DOTFILES_ZSH_DEBUG=true

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

source ~/.zsh/antigen.zsh
source ~/.zsh/local.zsh
