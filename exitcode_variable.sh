#!/bin/bash

output=$(systemctl status nginx 2>&1)
ec=$?

if [ $ec -eq 0 ]
then
    echo "nginx is running"
    echo "Details: $output"
else
    echo "nginx is down"
    echo "Error: $output"
fi

