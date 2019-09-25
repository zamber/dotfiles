if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2mglobal conf $(basename "$0")\e[0m"
fi

source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
# antigen theme robbyrussell

HOSTFILE=~/.zsh/host/antigen.`hostname -s`.zsh
if [ -f $HOSTFILE ]; then
  source $HOSTFILE
else
  # load heavy theme for new hosts
  antigen bundle stevenmirabito/neat
fi

# antigen bundle zsh-users/zsh-completions src/_ag
# antigen bundle zsh-users/zsh-completions src/_ack

# zsh-users/zsh-syntax-highlighting has to be last to work properly
bundles=(
  git
  command-not-found
  # willghatch/zsh-cdr
  zsh-users/zsh-autosuggestions
  zdharma/fast-syntax-highlighting
)

for i in $bundles; do
  antigen bundle $i
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m global bundle $i\e[0m"
  fi
done

if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m applying antigen...\e[0m"
fi

antigen apply

# fast syntax highlighting -- issue fix https://github.com/zdharma/fast-syntax-highlighting/issues/146
FAST_HIGHLIGHT[chroma-git]="chroma/-ogit.ch"
