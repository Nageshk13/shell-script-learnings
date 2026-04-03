#!/bin/bash

logfile=$2

count() {
    grep -ic "error" "$logfile"
}

last5() {
    grep -i "error" "$logfile" | tail -n 5
}

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 {count|last5} <logfile>"
    exit 1
fi

case $1 in
    count)
        echo "Total errors: $(count)"
        ;;
    last5)
        echo "Last 5 errors:"
        last5
        ;;
    *)
        echo "Invalid option"
        ;;
esac
