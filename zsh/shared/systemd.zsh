if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

# add environment vars to systemd for user services
# systemctl --user import-environment PATH

# an example of a userspace systemd service journal
# alias hybris_log="journalctl --user-unit hybris_ve.service -f"
