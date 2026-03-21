#!/bin/bash
a=20
b=30
c=40

if [ $a -gt $b ] && [ $a -gt $c ]; then
	echo '$a is greater'
elif [ $b -gt $a ] && [ $b -gt $c ]; then
	echo '$b is greater'
else 
	echo '$c is greater'
fi
