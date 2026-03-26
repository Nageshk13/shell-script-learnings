#!/bin/bash

if ! systemctl is-active --quiet nginx
then
    echo "nginx is down → restarting..."
    
    sudo systemctl start nginx

    if systemctl is-active --quiet nginx
    then
        echo "nginx started successfully"
    else
        echo "failed to start nginx"
        exit 1
    fi
else
    echo "nginx is already running"
uptime
fi
	

