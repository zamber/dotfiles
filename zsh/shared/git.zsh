if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

# set -euo pipefail

# a nice tag-extracting utility function to be used as $(t) inside of abbrevs
t() {
  git branch | grep "*" | egrep -o "[A-Z]{3,5}-[0-9]{1,5}"
}

_cache_hit() {
  hit=$(cat $BRANCHCACHE | grep "$(date +%D)$(git rev-parse --show-toplevel)" | tail -1 | cut -d " " -f 2)
  echo $hit
}

_get_main_branch() {
  echo $(git remote show origin | grep "HEAD branch" | cut -d ":" -f 2)
}

_cache_line() {
  echo $(date +%D)$(git rev-parse --show-toplevel) $(_get_main_branch)
}

_main_branch() {
  BRANCHCACHE=/tmp/branchcache
  if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1; then
    if [ ! -e "$BRANCHCACHE" ] ; then
      touch "$BRANCHCACHE"
    fi
    hit=$(_cache_hit)
    if [ -n "$hit" ]; then
      echo $hit
    else
      echo $(_cache_line) > $BRANCHCACHE
      echo $(_cache_hit)
    fi
  else
    echo not_a_git_repo_noob
  fi;
}

spr() {
  echo $(_main_branch)
}

gspr() {
  git checkout $(_main_branch)
}