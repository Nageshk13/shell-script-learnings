#!/bin/bash

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

threshold=70

if [ "$usage" -gt "$threshold" ]
then
    echo "WARNING: Disk usage is ${usage}%"
else
    echo "Disk usage is normal: ${usage}%"
fi
