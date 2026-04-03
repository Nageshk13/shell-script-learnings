#!/bin/bash

# 🔴 ADD HERE (input validation)
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <service> {status|check}"
    exit 1
fi

check-service() {
    if systemctl is-active --quiet "$1"; then
        echo "$1 is active"
    else
        echo "$1 is not active"
    fi
}

status-service() {
    echo "Status of $1..."
    sudo systemctl status "$1"
}

case $2 in
    check)
        check-service "$1"
        ;;
    status)
        status-service "$1"
        ;;
    *)
        echo "Usage: $0 <service> {status|check}"
        ;;
esac
