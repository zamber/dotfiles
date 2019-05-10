if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

# Use vim as the editor
export EDITOR=vim

alias clip="xsel --clipboard"
alias zshrc="code -nw ~/.dotfiles/ && reload"
alias sshconf="code ~/.ssh/config"
alias xo="xdg-open"
alias takeoutthetrash="rm -rf ~/.local/share/Trash/*"
