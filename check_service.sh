#!/bin/bash
if command -v git >/dev/null 2>&1 ; then
	echo "git is present"
	
	echo $?
	exit 1
else "not present"
fi
