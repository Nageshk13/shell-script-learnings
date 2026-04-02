#!/bin/bash

read -p "Enter file/folder name: " file

if [ ! -e "$file" ]
then
    echo "Error: $file does not exist"
    exit 1
fi

backup_name="$file _$(date +%F_%H-%M-%S).tar.gz"

tar -czf "$backup_name" "$file"

if [ $? -eq 0 ]
then
    echo "Backup created: $backup_name"
else
    echo "Backup failed"
    exit 1
fi
