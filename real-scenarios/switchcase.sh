#!/bin/bash

count() {
    grep -ic "error" /var/log/syslog
}

last5() {
    grep -i "error" /var/log/syslog | tail -n 5
}

echo "Choose an option:"
echo "1) Count errors"
echo "2) Show last 5 errors"
read choice

case $choice in
    1)
        echo "Total errors: $(count)"
        ;;
    2)
        echo "Last 5 errors:"
        last5
        ;;
    *)
        echo "Invalid option"
        ;;
esac

