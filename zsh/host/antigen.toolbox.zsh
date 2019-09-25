if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m antigen conf $(basename "$0")\e[0m"
fi

# export SPACESHIP_ROOT=~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-denysdovhan-SLASH-spaceship-prompt.git/
# antigen theme denysdovhan/spaceship-prompt # https://denysdovhan.com/spaceship-prompt/docs/Options.html#exit-code-exit_code
# export SPACESHIP_BATTERY_THRESHOLD=0

eval "$(starship init zsh)"

bundles=(
  # pip 
  systemd 
  nvm
  emoji
  npm
  yarn
  autojump # j, jc, jo - learning cd
  # compleat
)

antigen bundle zsh-users/zsh-completions src/_ag
antigen bundle zsh-users/zsh-completions src/_ack

for i in $bundles; do
  antigen bundle $i
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m  local bundle $i\e[0m"
  fi
done
