if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
# antigen theme robbyrussell

HOSTFILE=.zsh/host/antigen.`hostname`.zsh
if [ -f $HOSTFILE ]; then
    source $HOSTFILE
else
    # load heavy theme for new hosts
    antigen bundle stevenmirabito/neat
fi

antigen bundle zsh-users/zsh-completions src/_ag
antigen bundle zsh-users/zsh-completions src/_ack

# zsh-users/zsh-syntax-highlighting has to be last to work properly
bundles=(git tmux rsync command-not-found willghatch/zsh-cdr zsh-users/zsh-syntax-highlighting)


for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print " global bundle $i"
    fi
done

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " applying antigen..."
fi
antigen apply
