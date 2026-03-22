#!/bin/bash

shopt -s nullglob

for file in *.log
do
    count=$(grep -ci "error" "$file")

    if [ "$count" -gt 0 ]
    then
        echo "$file has $count errors"
    fi
done
