if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

source ~/dotfiles/local.`hostname`.zsh

# BTRFS stuff

if [[ $(df -T | grep btrfs) ]]; then
    alias cp="cp --reflink=auto"
fi

alias tmux="tmux -f ~/.tmux.conf"

alias top="htop"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias c="clear"
alias dirv="dirs -v"
alias dv="dirv"
alias pag="ps aux | grep"
alias tgz="tar -zcvf"
alias untgz="tar -zxvf"
alias dush="du -sh */"

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
