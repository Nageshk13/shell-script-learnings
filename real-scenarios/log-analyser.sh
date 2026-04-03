#!/bin/bash

count() {
    grep -ic "error" /var/log/syslog
}

last5() {
    grep -i "error" /var/log/syslog | tail -n 5
}
case $1 in
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

