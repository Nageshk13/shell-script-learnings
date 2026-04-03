#!/bin/bash

service=$1
action=$2

check_service() {
    if systemctl is-active --quiet "$service"; then
        echo "$service is running"
    else
        echo "$service is NOT running"
    fi
}

start_service() {
    sudo systemctl start "$service"
    echo "$service started"
}

stop_service() {
    sudo systemctl stop "$service"
    echo "$service stopped"
}

restart_service() {
    sudo systemctl restart "$service"
    echo "$service restarted"
}

if [ -z "$service" ] || [ -z "$action" ]; then
    echo "Usage: $0 <service> {status|start|stop|restart}"
    exit 1
fi

case $action in
    status)
        check_service
        ;;
    start)
        start_service
        ;;
    stop)
        stop_service
        ;;
    restart)
        restart_service
        ;;
    *)
        echo "Invalid action"
        ;;
esac
