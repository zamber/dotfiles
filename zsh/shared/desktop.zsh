if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

# Use vim as the editor
export EDITOR=vim

alias clip="xsel --clipboard"
alias zshrc="code -nw ~/.dotfiles/ && reload"
alias sshconf="code ~/.ssh/config"
alias o="open"
alias takeoutthetrash="rm -rf ~/.local/share/Trash/*"

if [[ "$(uname)" != "Darwin" ]]; then
    alias o="xdg-open"
fi
