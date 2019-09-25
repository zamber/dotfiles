if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

# # hack fix nvm not running with default version
nvm use --delete-prefix v12.10.0 > /dev/null
