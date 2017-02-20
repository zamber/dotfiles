if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  context conf `basename "$0"`"
fi

alias zshrc="subl -w ~/.zshrc && reload"
alias sshconf="subl ~/.ssh/config"
alias xo="xdg-open"