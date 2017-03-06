if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  context conf `basename "$0"`"
fi

if [[ -n "$(gconftool-2 --search-key focus_new_windows)" ]]; then
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "   no need to set focus_new_windows"
    fi
else
    gconftool-2 --set /apps/metacity/general/focus_new_windows --type string strict
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "   set focus_new_windows"
    fi
fi
