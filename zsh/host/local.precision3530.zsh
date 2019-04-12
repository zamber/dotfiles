if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh

alias localaliasrc="code ~/.dotfiles/zsh/host/local.precision3530.zsh"

alias vec-home="cd ~/repos/ve"
alias vec-platform="cd ~/repos/ve/hybris/bin/platform"
alias vec-front="cd ~/repos/ve/hypl/hybris/bin/custom/grandvision/grandvisionstorefront"

alias ve-run-hybris="systemctl --user start ve-hybris.service"
alias ve-stop-hybris="systemctl --user stop ve-hybris.service"
alias ve-restart-hybris="ve-stop-hybris; sleep 10; ve-start-hybris"
alias ve-log-hybris="journalctl --user-unit ve-hybris.service"
alias ve-log-mysql="journalctl --user-unit ve-mysql.service"
alias ve-log="journalctl --user-unit ve-hybris.service --user-unit ve-mysql.service"

alias ve-mysql-init='sudo docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20'
