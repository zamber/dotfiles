if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

# Use vim as the editor
export EDITOR=subl

alias clip="xsel --clipboard"
alias zshrc="subl -w ~/.dotfiles/ && reload"
alias sshconf="subl ~/.ssh/config"
alias xo="xdg-open"
alias takeoutthetrash="rm -rf ~/.local/share/Trash/*"
