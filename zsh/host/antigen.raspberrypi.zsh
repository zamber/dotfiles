if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " antigen conf `basename "$0"`"
fi

antigen theme manasthakur/zsh-prompto # light theme

bundles=()

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done

export NEAT_GIT_PULL=0