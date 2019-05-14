if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m antigen conf $(basename "$0")\e[0m"
fi

antigen bundle stevenmirabito/neat # heavy theme

bundles=(svn adb pip pass systemd rbirnie/oh-my-zsh-keybase)

for i in $bundles; do
  antigen bundle $i
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m  local bundle $i\e[0m"
  fi
done

# antigen bundle zsh-users/zsh-completions src/_android
antigen bundle zsh-users/zsh-completions src/_virtualbox
