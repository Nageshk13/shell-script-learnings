#!/bin/bash

while true
do
    read -p "Enter file name or choice (1-3, *.sh, *.txt, q to quit): " file

    case $file in
        1) echo "You chose One";;
        2) echo "You chose Two";;
        3) echo "You chose Three";;
        *.sh) echo "This is a shell script";;
        *.txt) echo "This is a text file";;
        q|Q) echo "Exiting..."; break;;
        *) echo "Unknown file type or choice";;
    esac
done
# What’s happening here
# while true → keeps looping forever.
# read -p → asks for input each time.
# case → evaluates the input.
# q|Q → lets the user quit gracefully.
# break → exits the loop when the user chooses to quit.
