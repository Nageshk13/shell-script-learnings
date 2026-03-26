#!/bin/bash

num=$(grep -ci "session closed" /var/log/auth.log)

if [ "$num" -gt 3 ]
then
    echo "ALERT: High session closed attempts ($num)"
else
    echo "Normal ($count)"
fi

:'#!/bin/bash

count=0
while read -r line; do
    if [[ $line == *"session closed"* ]]; then
        ((count++))
    fi
done < /var/log/auth.log

if [ "$count" -gt 3 ]; then
    echo "ALERT: High session closed attempts ($count)"
else
    echo "Normal ($count)"
fi
'
