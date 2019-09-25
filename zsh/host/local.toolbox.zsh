if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/selinux.zsh
source ~/.zsh/shared/adb.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/git.zsh
source ~/.zsh/shared/synergy.zsh
source ~/.zsh/shared/webdev.zsh

export LESSHISTFILE="$XDG_CACHE_HOME"/lesshst
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export RANDFILE="$XDG_CACHE_HOME"/openssl/rnd
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache

# Fedora Silverblue / Flatpak fixes

# # https://gnunn1.github.io/tilix-web/manual/vteconfig/
# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#   source /etc/profile.d/vte.sh
# fi

# # hack fix nvm not running with default version
nvm use --delete-prefix v10.16.3
