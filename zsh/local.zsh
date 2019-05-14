if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2mglobal conf $(basename "$0")\e[0m"
fi

setopt extendedglob

typeset -A abbrevs

abbrevs=(
  'll' 'ls -la'
  'la' 'ls -A'
  'l' 'ls'
)

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
abbrevs+=(
  "top" "htop"
  "reload" ". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
  "cl" "clear"
  "dirv" "dirs -v"
  "dv" "dirv"
  "pag" "ps aux | grep"
  "dush" "du -sh */"
  "tgz" "tar -zcvf"
  "untgz" "tar -zxvf"
  "urlencode" 'python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
  "urldecode" 'python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
  "mirrorsite" 'wget -m -k -K -E -e robots=off'
  "cdgr" 'cd "$(git root)"'
  "cdtf" "cd ~/.dotfiles"
)

# Jump to directory containing file
function jump() {
  cd "$(dirname ${1})"
}

# add local bin files
if [ -d "$HOME/.local/bin/" ]; then
  export PATH=$HOME/.local/bin/:$PATH
fi

# magic abbrev via https://github.com/ericboehs/dotfiles/blob/master/.zsh/abbreviations.zsh
if [ $DOTFILES_ZSH_DEBUG = true ]; then
  echo "\e[2mlist of aliases and abbreviations:\e[0m"
  for abbr in ${(k)abbrevs}; do
    echo "\e[2m  $abbr = ${abbrevs[$abbr]}\e[0m"
  done
fi

for abbr in ${(k)abbrevs}; do
  alias $abbr="${abbrevs[$abbr]}"
done

magic-abbrev-expand() {
  local MATCH
  LBUFFER=${LBUFFER%%(#m)[_a-zA-Z0-9]#}
  command=${abbrevs[$MATCH]}
  LBUFFER+=${command:-$MATCH}

  if [[ "${command}" =~ "__CURSOR__" ]]; then
    RBUFFER=${LBUFFER[(ws:__CURSOR__:)2]}
    LBUFFER=${LBUFFER[(ws:__CURSOR__:)1]}
  else
    zle self-insert
  fi
}

magic-abbrev-expand-and-execute() {
  magic-abbrev-expand
  zle backward-delete-char
  zle accept-line
}

no-magic-abbrev-expand() {
  LBUFFER+=' '
}

zle -N magic-abbrev-expand
zle -N magic-abbrev-expand-and-execute
zle -N no-magic-abbrev-expand

bindkey " " magic-abbrev-expand
bindkey "^M" magic-abbrev-expand-and-execute
bindkey "^x " no-magic-abbrev-expand
bindkey -M isearch " " self-insert
