if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

abbrevs+=(
  "rel" "release/v2.5.2"s
  "gc" 'g commit -m "$(t)"'
  "gkill" "lsof -i tcp:8080 | egrep '(node|gulp)' | awk '{print $2}' | while read in; do echo '$in'; done "
)
