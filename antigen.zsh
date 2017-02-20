if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

bundles=(z git tmux rsync command-not-found zsh-users/zsh-syntax-highlighting)

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print " global bundle $i"
    fi
done

antigen theme robbyrussell

source ~/dotfiles/antigen.`hostname`.zsh

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "applying antigen..."
fi
antigen apply
