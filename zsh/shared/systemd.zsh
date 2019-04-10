if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

# add environment vars to systemd for user services
systemctl --user import-environment PATH

alias hybris_log="journalctl --user-unit hybris_ve.service -f"
