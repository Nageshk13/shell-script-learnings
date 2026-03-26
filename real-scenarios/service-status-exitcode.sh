#!/bin/bash

systemctl status nginx > /dev/null 2>&1
if [ $? -eq 127 ]
then
    echo "nginx is running"
else
    echo "nginx is down"
fi

