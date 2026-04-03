#!/bin/bash

backup(){
backup_name="$1_$(date +%F_%H-%M-%S).tar.gz"
if tar -czf "$backup_name" "$1"; then
	echo "backup successful of $1"
else
	echo"not backuped"
fi
}
list() {
        find . -type f -name "*gz"
}

case $1 in
        back)
                backup "$2"
                ;;
        list)
                list
                ;;
        *)
                echo "$0"
                ;;
esac
