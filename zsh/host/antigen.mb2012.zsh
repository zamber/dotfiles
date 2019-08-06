if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " antigen conf `basename "$0"`"
fi

#antigen bundle stevenmirabito/neat # heavy theme
antigen theme https://gist.github.com/0d12bd51a5fd8e6bb52e6e6a43d31d5e.git agnoster-nix

bundles=(pip emoji)

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done

# antigen bundle zsh-users/zsh-completions src/_android
# antigen bundle zsh-users/zsh-completions src/_virtualbox
#antigen bundle chisui/zsh-nix-shell