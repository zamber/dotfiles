if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  context conf `basename "$0"`"
fi

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
