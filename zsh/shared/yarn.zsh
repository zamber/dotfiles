
if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

if command -v yarn $1>/dev/null; then
    export PATH=$(yarn global bin):$PATH
    print "   yarn global bin added to PATH"
else
    print "   yarn not found, pass"
fi
