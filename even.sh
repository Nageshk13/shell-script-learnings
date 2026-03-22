#!/bin/bash

num=({2..32})
for i in "${num[@]}"
do
	if (( i %2 == 0 )); then
	echo "even:$i"
	fi
done
