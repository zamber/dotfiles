if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  context conf `basename "$0"`"
fi

abbrevs+=(
  "y" "yarn",
  "ys" "yarn && yarn start"
)

# NVM

# fix complaints
nvm use --delete-prefix v12.14.1

nvm_install() {
  mkdir -p $HOME/.nvm/
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
}

if [ -d ~/.nvm ]; then
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   nvm installed, pass\e[0m"
  fi
else
  nvm_install
fi

if command -v node $1>/dev/null; then
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   node found\e[0m"
  fi
else
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   node not found, installing\e[0m"
  fi
  nvm install node && nvm alias default node
fi

if command -v yarn $1>/dev/null; then
  export PATH=$(yarn global bin):$PATH
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   yarn global bin added to PATH\e[0m"
  fi
else
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   yarn not found, pass\e[0m"
  fi
fi
