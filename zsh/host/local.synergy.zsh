if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/silverblue.zsh
source ~/.zsh/shared/selinux.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh
source ~/.zsh/shared/git.zsh

alias code-oss="flatpak run com.visualstudio.code.oss"
alias code="code-oss"
abbrevs+=(
  "code" "code-oss"
  "tb" "toolbox"
  "tbe" "toolbox enter"
)

# Fedora Silverblue / Flatpak fixes

# https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
