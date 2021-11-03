#!/bin/bash

if [[ $# -eq 1 ]]; then
	2=$(pwd)
elif [[ $# -eq 2 && ! -d $2 ]]; then
	if [[ $2[1] != "/" ]]; then
	else
		2=$(pwd)/$2
	fi
else
	echo 'usage: aux generate_c_structure <structure_name> <path>'
	exit 1
fi

cd $env/.tool
echo uppercase name = $(echo $1 | tr "[:lower:]" "[:upper:]")"\n"lowercase name = $1 > name.variable
./variabledText.out template.h -o $2/$1.h
./variabledText.out template.c -o $2/$1.c
rm name.variable
