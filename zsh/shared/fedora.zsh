if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

alias i="sudo dnf install"
alias u="sudo dnf update"
alias rem="sudo dnf remove"
alias arem="sudo dnf autoremove -y"

alias s="dnf search"
alias upg="u && arem && sudo dnf upgrade -y"
alias udevreload="sudo udevadm control --reload-rules"
