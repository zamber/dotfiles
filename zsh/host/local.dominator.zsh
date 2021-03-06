if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/ubuntu.zsh
source ~/.zsh/shared/gnome-shell.zsh
source ~/.zsh/shared/adb.zsh

################################################################################
# Exports
################################################################################

# Custom scripts
export PATH=~/repos/max/scripts:$PATH

# Custom binaries
export PATH=~/.bin:$PATH

# Android SDK binaries
export ANDROID_HOME=~/Android/Sdk/
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH #adb, fastboot

# battery-historian for android
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export NVM_DIR="/home/piotr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export EDITOR="subl --wait"

# debug ievms
export DEBUG='iectrl:*'

################################################################################
# Aliases
################################################################################

# local apps
alias gource="gource -a 2 -s 1 -i 0 --max-files 0 -1920x1080"

# often changed
alias sublpro="cd ~/repos/max/scripts/"

# functional
alias html2md='find . -name "*.ht*" | while read i; do pandoc -f html -t markdown "$i" -o "${i%.*}.md"; done'
alias md2html='find . -name "*.md" | while read i; do md=`markdown "$i"` ./template >! "${i%.*}.html"; done'

# opera
alias squadak="sudo mkdir -p /media/squadak && sudo mount -t cifs //squadak.wroclaw.osa/shared /media/squadak && cd /media/squadak"
alias vpi="xtightvncviewer 10.40.140.52:5900 -passwd /home/piotr/.vnc/passwd"

export JENKINS_URL=http://maximus.service.osa:8080/

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"