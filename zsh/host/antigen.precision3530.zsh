if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " antigen conf `basename "$0"`"
fi

antigen bundle stevenmirabito/neat # heavy theme

bundles=(pip systemd rbirnie/oh-my-zsh-keybase)

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done

# antigen bundle zsh-users/zsh-completions src/_android
antigen bundle zsh-users/zsh-completions src/_virtualbox
