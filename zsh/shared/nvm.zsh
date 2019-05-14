#!/usr/bin/env zsh

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

function nvm_install () {
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
}

if command -v nvm $1>/dev/null; then
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m   nvm installed, pass\e[0m"
  fi
else
  nvm_install
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