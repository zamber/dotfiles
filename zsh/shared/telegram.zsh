if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

alias tg_stick="mogrify -format png -define png:compression-filter=2 -define png:compression-level=9 -define png:compression-strategy=4 -resize 512x512 *.jpeg"