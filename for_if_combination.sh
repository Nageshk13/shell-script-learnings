#!/bin/bash
 for file in *
 do
	 if [[ $file == *.sh ]]; then
	    echo "its a shell : $file"
	 fi
 done
