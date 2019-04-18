#!/usr/bin/env bash

while true; do
    if docker ps &>/dev/null; then
        systemctl --user --no-block start docker.target
        echo Docker IS running
    else 
        systemctl --user --no-block stop docker.target
        echo Docker is not running
    fi
    sleep 10
done