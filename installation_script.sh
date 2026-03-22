#!/bin/bash

if ! command -v nginx > /dev/null
then
    echo "nginx not installed. Installing..."

    sudo apt update
    sudo apt install -y nginx

    if [ $? -eq 0 ]
    then
        echo "nginx installed successfully"
    else
        echo "installation failed"
        exit 1
    fi
else
    echo "nginx already installed"
fi
