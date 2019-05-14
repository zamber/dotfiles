if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

# Use vim as the editor
export EDITOR=vim

# this is probably better handled by some plugin
# if [[ -z "$TMUX" ]]; then
#     tmux has-session &> /dev/null
#     if [ $? -eq 1 ]; then
#       exec tmux new
#       exit
#     else
#       exec tmux attach
#       exit
#     fi
# fi
