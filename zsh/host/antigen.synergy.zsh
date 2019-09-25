if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m antigen conf $(basename "$0")\e[0m"
fi

# antigen bundle stevenmirabito/neat # old, heavy theme
# export SPACESHIP_ROOT=~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-denysdovhan-SLASH-spaceship-prompt.git/
# antigen theme denysdovhan/spaceship-prompt # https://denysdovhan.com/spaceship-prompt/docs/Options.html#exit-code-exit_code
# export SPACESHIP_BATTERY_THRESHOLD=80

eval "$(starship init zsh)"

bundles=(
  pip 
  systemd 
  nvm 
  emoji
  npm
  yarn
  web-search # adds web search stuff, like $ ddg search the duck
  autojump # j, jc, jo - learning cd
  compleat
)

for i in $bundles; do
  antigen bundle $i
  if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    echo "\e[2m  local bundle $i\e[0m"
  fi
done

# antigen bundle zsh-users/zsh-completions src/_android
antigen bundle zsh-users/zsh-completions src/_virtualbox
