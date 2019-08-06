if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/macos.zsh
source ~/.zsh/shared/adb.zsh
source ~/.zsh/shared/yarn.zsh

# Load nix
. /Users/pz/.nix-profile/etc/profile.d/nix.sh

alias code="codium"

alias y="yarn"

alias localaliasrc="code $HOME/.dotfiles/zsh/host/local.mb2012.zsh"

export r="release/v2.5"
export s="release/Sprint54"

export PATH=/nix/store/6ws6hvh6yv1wkjqf8nfq3821xh2m7am5-nodejs-10.16.0/bin/:$PATH