if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  context conf `basename "$0"`"
fi

alias y="yaourt"
alias yunlock="sudo rm /var/lib/pacman/db.lck"
alias upg="y -Syyu --noconfirm"
alias rem="y -R"
