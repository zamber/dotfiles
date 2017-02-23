if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

bundles=()

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done