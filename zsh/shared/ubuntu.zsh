if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

if [[ $(which apt | grep "not found") ]]; then
    alias apt="apt-get"
fi

alias getjdk="java -version && update-java-alternatives -l"
alias i="sudo apt install"
alias u="sudo apt update"
alias rem="sudo apt remove"
alias arem="sudo apt autoremove -y"

alias s="apt-cache search"
alias upg="u && arem && sudo apt upgrade -y"
alias udevreload="udevadm control --reload-rules"
