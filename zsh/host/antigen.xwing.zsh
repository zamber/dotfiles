if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " antigen conf `basename "$0"`"
fi

bundles=(adb pip pass systemd rbirnie/oh-my-zsh-keybase)

for i in $bundles; do
    antigen bundle $i
    if [ $DOTFILES_ZSH_DEBUG = true ] ; then
        print "  local bundle $i"
    fi
done

# these generate an error - TODO
# antigen bundle zsh-users/zsh-completions src/_android
# antigen bundle zsh-users/zsh-completions src/_optirun
antigen bundle zsh-users/zsh-completions src/_yaourt
antigen bundle zsh-users/zsh-completions src/_virtualbox
