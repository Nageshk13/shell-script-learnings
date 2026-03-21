#!/bin/bash

name="enter name"

read name

if [ $name == "nagesh" ]; then
	echo "hi, $name"
else
	echo "bye"
fi
