if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print global conf `basename "$0"`
fi

HOSTFILE=~/.zsh/host/local.`hostname -s`.zsh
if [ -f $HOSTFILE ]; then
    source $HOSTFILE
fi

# BTRFS stuff

if [[ "$(uname)" != "Darwin" ]]; then
    if [[ -n "$(df -T | grep btrfs)" ]]; then
        alias cp="cp --reflink=auto"
    fi
fi

#alias ls='ls --color=auto'

# alias tmux="tmux -f ~/.tmux.conf"

alias top="htop"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias c="clear"
alias dirv="dirs -v"
alias dv="dirv"
alias pag="ps aux | grep"
alias dush="du -sh */"

alias tgz="tar -zcvf"
alias untgz="tar -zxvf"

# ls aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls'

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'

alias mirrorsite='wget -m -k -K -E -e robots=off'

# cd to git root directory
alias cdgr='cd "$(git root)"'

# Jump to directory containing file
function jump() {
    cd "$(dirname ${1})"
}
