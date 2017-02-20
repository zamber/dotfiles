source ~/dotfiles/local.`hostname`.zsh

# BTRFS stuff

if [[ $(df -T | grep btrfs) ]]; then
    alias cp="cp --reflink=auto"
fi

alias zshrc="subl -w ~/.zshrc && reload"
alias sshconf="subl ~/.ssh/config"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias c="clear"
alias dirv="dirs -v"
alias pag="ps aux | grep"
alias untgz="tar zxvf"
alias xo="xdg-open"
