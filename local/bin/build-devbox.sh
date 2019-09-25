#!/bin/zsh
set -eux
NAME=fedora-toolbox-30

if [ -n "${TOOLBOX_RELEASE:-}" ]; then
    RELEASE="--release $TOOLBOX_RELEASE"
    NAME="$NAME-$TOOLBOX_RELEASE"
else
    RELEASE=''
fi

toolbox rm --force $NAME || true
toolbox create $RELEASE -c $NAME

# sudo dnf install -y adapta-gtk-theme autojump-zsh paper-icon-theme gimp inkscape zsh

# install cockpit's build deps and other development tools
toolbox run -c "$NAME" sh -exec "\
sudo dnf -y install glibc-all-langpacks
sudo dnf install -y autojump-zsh zsh graphviz
sudo dnf install -y fontconfig git man-pages wget rsync vim htop the_silver_searcher
sudo dnf install -y make gcc gcc-c++
usermod -s /bin/zsh $USERNAME
nvm install node && nvm alias default node
sudo dnf clean packages
"