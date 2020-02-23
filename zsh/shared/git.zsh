if [ $DOTFILES_ZSH_DEBUG = true ]; then
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
  if [ -d .git ] || git rev-parse --git-dir >/dev/null 2>&1; then
    if [ ! -e "$BRANCHCACHE" ]; then
      touch "$BRANCHCACHE"
    fi
    hit=$(_cache_hit)
    if [ -n "$hit" ]; then
      echo $hit
    else
      echo $(_cache_line) >$BRANCHCACHE
      echo $(_cache_hit)
    fi
  else
    echo not_a_git_repo_noob
  fi
}

spr() {
  echo $(_main_branch)
}

gspr() {
  git checkout $(_main_branch)
}

git-is-merged() {
  merge_destination_branch=$1
  merge_source_branch=$2

  merge_base=$(git merge-base $merge_destination_branch $merge_source_branch)
  merge_source_current_commit=$(git rev-parse $merge_source_branch)
  if [[ $merge_base == $merge_source_current_commit ]]; then
    echo $merge_source_branch
    return 0
  else
    # echo $merge_source_branch is not merged into $merge_destination_branch
    return 1
  fi
}

git-list-merged() {
  git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)' > /tmp/zsh-git-refs-temp
  while read line; do
    git-is-merged HEAD $(echo $line | awk -F" " '{print $2}')
    #echo $line
  done < /tmp/zsh-git-refs-temp
  rm /tmp/zsh-git-refs-temp
}

git-rm-merged() {
  git-list-merged | egrep --invert-match '(master|sprint)' > /tmp/zsh-git-refs-merged-HEAD
  while read line; do
    git push origin --delete $line
  done < /tmp/zsh-git-refs-merged-HEAD
  rm /tmp/zsh-git-refs-merged-HEAD
}