if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m  shared conf $(basename "$0")\e[0m"
fi

abbrevs+=(
  "ins" "sudo dnf install"
  "upd" "sudo dnf update"
  "rem" "sudo dnf remove"
  "arem" "sudo dnf autoremove -y"
  "ser" "dnf search"
  "upg" "upd && arem && sudo dnf upgrade -y"
  "udevreload" "sudo udevadm control --reload-rules"
)
