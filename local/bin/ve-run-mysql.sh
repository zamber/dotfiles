#!/bin/bash

The image has to be setup fisrt
#docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20
docker start gvmysql
if [ $? -eq 1 ] ; then
    echo 'gvmysql image was not setup, run:'
    echo '    docker run --name=gvmysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=grandv" -e "MYSQL_USER=grandvision" -e "MYSQL_PASSWORD=grandvision" -e MYSQL_ROOT_HOST="172.17.0.1" -e "MYSQL_LOG_CONSOLE=true" -d mysql/mysql-server:5.7.20'
    echo 'and populate it with a db dump'
fi
