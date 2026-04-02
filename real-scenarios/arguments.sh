#!/bin/bash

file=$1

if [ -z "$file" ]
then
    echo "Usage: $0 <file_or_folder>"
    exit 1
fi

if [ ! -e "$file" ]
then
    echo "Error: $file does not exist"
    exit 1
fi

backup_name="backup_$(date +%F).tar.gz"

tar -czf "$backup_name" "$file"

echo "Backup created: $backup_name"
