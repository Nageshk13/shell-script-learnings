#!/bin/bash

if find . -type f -name 'file1' ; then
    echo "file exists"
else
    echo "file does not exist"
fi

