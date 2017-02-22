if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source $DOTFILES_BASEDIR/context/desktop.zsh
source $DOTFILES_BASEDIR/context/arch.zsh
source $DOTFILES_BASEDIR/context/adb.zsh

################################################################################
# Exports
################################################################################

export PATH=~/.bin/:~/.gem/ruby/2.2.0/bin:$PATH
export PATH=~/Android/Sdk/platform-tools:$PATH

# debug ievms
export DEBUG='iectrl:*'

# Make steam use local libraries insted of bundled ones
export STEAM_RUNTIME=0

################################################################################
# Aliases
################################################################################

alias steam="STEAM_RUNTIME=0 steam"
alias am="alsamixer"
alias wm="sudo wifi-menu"
alias subl="subl3"


# VPN
alias stun='sudo sshuttle --dns --daemon --pidfile=/tmp/sshuttle.pid -r pi 0/0'
alias stunx='[[ -f /tmp/sshuttle.pid ]] && sudo kill $(cat /tmp/sshuttle.pid) && echo "Disconnected."'
alias vpn='sudo openvpn /etc/openvpn/client.conf'


# opera connectivity
alias ovpn='sudo openconnect --juniper wroclaw.vpn.opera.com'
alias ossh='ssh -L 5901:localhost:5901 dominator'
alias ovnc='vncviewer localhost::5901 -encodings "tight" -compresslevel 9 -quality 5'


# web stuff
alias blog_update="cd ~/Development/Private/zambernet/_site && bundle exec jekyll build && rsync -avxAX --log-file='log.out' . radiant:/var/www/html/"


# for i3
alias i3rc="subl -w ~/.i3/config && i3msg restart"
alias comptonZ="compton --opacity-rule '100:window_type = \"dock\" && class_g = \"i3bar\"' --config ~/.config/compton/config -b"


## Screens
alias add_screen_mode="xrandr --newmode '1920x1080_60.00'  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync && xrandr --addmode VGA1 1920x1080_60.00"
alias add_screen="xrandr --output VGA1 --auto --left-of LVDS1 && xrandr --output LVDS1 --auto --pos 0x312 --output VGA1 --mode 1920x1080_60.00 --pos 1366x0"
alias remove_screen="xrandr --output VGA1 --off --screen 0"

alias hdmi_add_screen_mode="xrandr --newmode '1920x1080_60.00'  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync && xrandr --addmode HDMI1 1920x1080_60.00"
alias hdmi_add_screen="xrandr --output HDMI1 --auto --right-of LVDS1 && xrandr --output LVDS1 --auto --pos 0x312 --output HDMI1 --mode 1920x1080_60.00 --pos 1366x0"
alias hdmi_remove_screen="xrandr --output HDMI1 --off --screen 0"


# Random utilities
alias new_year="while [[ $(date +%Y) -ne 2017 ]];do figlet $(($(date -d 2017-01-01 +%s)-$(date +%s)));sleep 1 && clear;done;figlet 'Happy New Year!'"
alias enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'
