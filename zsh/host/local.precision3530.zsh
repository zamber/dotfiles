if [ $DOTFILES_ZSH_DEBUG = true ] ; then
  echo "\e[2m local conf $(basename "$0")\e[0m"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/selinux.zsh
source ~/.zsh/shared/adb.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh

abbrevs+=(
  "code" "vscodium"
  "y" "yarn"
  "localaliasrc" "code $HOME/.dotfiles/zsh/host/local.precision3530.zsh"
)

# Hybris project stuff, can be reused with some editing
export H_REPO="$HOME/repos/ve"
export H_PLATFORM="$H_REPO/hybris/bin/platform"
export H_FRONT="$H_REPO/hypl/hybris/bin/custom/grandvision/grandvisionstorefront"

veantall() {
  pushd $H_PLATFORM
  . ./setantenv.sh
  ant clean all
  popd
}

t() {
  git branch | grep "*" | egrep -o "[A-Z]{3,5}-[0-9]{1,5}"
}

abbrevs+=(
  "vehome" "cd $H_REPO"
  "veplatform" "cd $H_PLATFORM"
  "vefront" "cd $H_FRONT"
  "veanguar" "cd $H_FRONT/web/webroot/WEB-INF/_ui-src/angular-frontend"
  "verunhybris" "systemctl --user start ve-hybris.service"
  "vestophybris" "systemctl --user stop ve-hybris.service"
  "vereboothybris" "vestophybris; sleep 5; verunhybris"
  "veloghybris" "journalctl --user-unit ve-hybris.service"
  "velogmysql" "journalctl --user-unit ve-mysql.service"
  "velog" "journalctl --user-unit ve-hybris.service --user-unit ve-mysql.service"
  "velognopager" "journalctl --user-unit ve-hybris.service --user-unit ve-mysql.service --no-pager | less -+S"
  "vemysqlinit" 'sudo docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20'
  "vefixaccountspeed" "sudo ifconfig lo:1 inet 176.119.58.229 netmask 255.255.255.255 up"
  "rel" "release/v2.5.2"
  "spr" "release/Sprint57"
  "gc" 'g commit -m "$(t)"'
  "vis" "cava"
)
