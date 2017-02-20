if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

# rarely used: 
bundles=(svn adb pip pass systemd)

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done
