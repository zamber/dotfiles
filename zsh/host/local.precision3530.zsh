if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/selinux.zsh
source ~/.zsh/shared/adb.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh

alias code="vscodium"

alias y="yarn"

alias localaliasrc="code $HOME/.dotfiles/zsh/host/local.precision3530.zsh"

# Hybris project stuff, can be reused with some editing

export H_REPO="$HOME/repos/ve"
export H_PLATFORM="$H_REPO/hybris/bin/platform"
export H_FRONT="$H_REPO/hypl/hybris/bin/custom/grandvision/grandvisionstorefront"

ve-ant-all() {
    pushd $H_PLATFORM
    . ./setantenv.sh
    ant clean all
    popd
}

alias vec-home="cd $H_REPO"
alias vec-platform="cd $H_PLATFORM"
alias vec-front="cd $H_FRONT"
alias vec-anguar="cd $H_FRONT/web/webroot/WEB-INF/_ui-src/angular-frontend"

alias ve-run-hybris="systemctl --user start ve-hybris.service"
alias ve-stop-hybris="systemctl --user stop ve-hybris.service"
alias ve-reboot-hybris="ve-stop-hybris; sleep 10; ve-run-hybris"
alias ve-log-hybris="journalctl --user-unit ve-hybris.service"
alias ve-log-mysql="journalctl --user-unit ve-mysql.service"
alias ve-log="journalctl --user-unit ve-hybris.service --user-unit ve-mysql.service"
alias ve-log-no-pager="journalctl --user-unit ve-hybris.service --user-unit ve-mysql.service --no-pager | less -+S"

alias ve-mysql-init='sudo docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20'

export r="release/v2.5"
export s="release/Sprint54"
