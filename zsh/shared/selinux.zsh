
if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

alias audit="sudo cat /var/log/audit/audit.log | audit2why"
