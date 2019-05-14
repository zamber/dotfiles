if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

if [[ -n "$(gconftool-2 --search-key focus_new_windows)" ]]; then
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "   no need to set focus_new_windows"
  fi
else
  gsettings set org.gnome.desktop.wm.preferences focus-new-windows ‘strict’
  #gconftool-2 --set /apps/metacity/general/focus_new_windows --type string strict
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "   set focus_new_windows"
  fi
fi
