
if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

function nvm_install () {
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
}

if command -v nvm $1>/dev/null; then
    print "   nvm installed, pass"
else
    nvm_install
fi

if command -v yarn $1>/dev/null; then
    export PATH=$(yarn global bin):$PATH
    print "   yarn global bin added to PATH"
else
    print "   yarn not found, pass"
fi