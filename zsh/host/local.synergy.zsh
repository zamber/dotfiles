if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/selinux.zsh
source ~/.zsh/shared/adb.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh

alias vscodium="/usr/share/codium/codium"
alias reactide="/home/pz/repos/tools/reactide/release-builds/Reactide-darwin-x64"

abbrevs+=(
  "code" "vscodium"
  "y" "yarn"
  "localaliasrc" "code $HOME/.dotfiles/zsh/host/local.precision3530.zsh"
)

# a nice tag-extracting utility function to be used as $(t) inside of abbrevs
t() {
  git branch | grep "*" | egrep -o "[A-Z]{3,5}-[0-9]{1,5}"
}

abbrevs+=(
  "rel" "release/v2.5.2"
  "spr" "sprint/19.02"
  "gc" 'g commit -m "$(t)"'
  "vis" "cava"
)
