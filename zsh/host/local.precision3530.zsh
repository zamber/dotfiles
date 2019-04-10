if [ $DOTFILES_ZSH_DEBUG = true ] ; then
    print " local conf `basename "$0"`"
fi

source ~/.zsh/shared/desktop.zsh
source ~/.zsh/shared/fedora.zsh
source ~/.zsh/shared/systemd.zsh
source ~/.zsh/shared/nvm.zsh

alias localaliasrc="code ~/.dotfiles/zsh/host/local.precision3530.zsh"

alias h="cd ~/repos/ve"
alias hb="cd ~/repos/ve/hybris/bin/platform"
alias gv_front="cd ~/repos/ve/hypl/hybris/bin/custom/grandvision/grandvisionstorefront"

alias h_mysql="sudo docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20"