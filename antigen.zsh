source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

source ~/dotfiles/antigen.`hostname`.zsh

antigen bundle git
antigen bundle pip
antigen bundle tmux
antigen bundle command-not-found
antigen bundle expand-ealias

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply
