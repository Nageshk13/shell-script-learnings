#!/bin/bash

create_backup() {
    if [ ! -e "$1" ]; then
        echo "Error: $1 does not exist"
        exit 1
    fi

    backup_name="${1}_$(date +%F_%H-%M-%S).tar.gz"

    if tar -czf "$backup_name" "$1"; then
        echo "Backup successful: $backup_name"
    else
        echo "Backup failed"
        exit 1
    fi
}

list_backups() {
    ls *.tar.gz 2>/dev/null || echo "No backups found"
}

case $1 in
    create)
        create_backup "$2"
        ;;
    list)
        list_backups
        ;;
    *)
        echo "Usage: $0 {create <file>|list}"
        ;;
esac
