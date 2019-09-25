if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

abbrevs+=(
  "ins" "rpm-ostree install"
  "upd" "rpm-ostree update"
  "rem" "rpm-ostree remove"
  "ser" "toolbox run dnf search"
  "upg" "upd && rpm-ostree upgrade"
  
)
