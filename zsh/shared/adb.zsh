if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print "  shared conf `basename "$0"`"
fi

export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
alias fb="sudo $HOME/Android/Sdk/platform-tools/fastboot"
alias fastboot="fb"
alias adb="sudo $HOME/Android/Sdk/platform-tools/adb"

# adb and fastboot
alias adbdi="adbrem && adb install"
alias adbu="adb install -r"
alias adbs="adb shell"
alias adbshot="adb shell screencap -p | sed 's/\r$//' >!"
alias adbshotdate='date +%F-%T.png | while read i; do adbshot ${i}; done'
alias adbpack="adb shell 'pm list packages -f' | cut -f 2 -d '='"
alias adbopera="adbpack | grep -o -e 'com.opera.max.[^p].*'"
alias adbrem="adbopera | xargs -r adb uninstall"
alias adbclear="adbopera | xargs -r adb shell pm clear"
alias adbl="adb shell logcat -v threadtime"

# logcatnow() {
#     DIR="~/Workspace/logcat"
#     DAT=$(date -Iseconds)
#     DEV=$(adb shell getprop ro.product.model | sed s/\ /_/)
#     if [[ -n $DEV ]]; then
#         adb shell logcat -v threadtime -d | vipe > "$DIR/$DEV - $DAT.txt"
#         echo
#     else
#         echo "No device connected"
#     fi
# }

adbrecord() {
    echo "Started recording for $1 seconds..." && adb shell screenrecord --bit-rate 8000000 --time-limit $1 /sdcard/$2.mp4 && adb pull /sdcard/$2.mp4 . && echo "Recording saved as $2.mp4"
}

# Wireshark
# alias max-qa-wifi="ssh auto tcpdump -i eth1 -n -s 0 -U -w - | wireshark -k -i -"

# Android battery stuff
# alias bat-prep-dev="adb shell dumpsys batterystats --reset && adb shell dumpsys batterystats --enable full-wake-history"
# alias bat-get-br="adb shell bugreport > "
# alias bat-run-historian="cd ~/go/src/github.com/google/battery-historian/ && echo 'opening http://localhost:9999/' && xo http://localhost:9999/ && go run cmd/battery-historian/battery-historian.go"
