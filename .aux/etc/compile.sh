#!/bin/bash

if [[ $# -ne 1 && $# -ne 2 ]]; then
	echo 'usage: aux compile <path without extension> <path to include>'
fi

clang -c -g -I $2 $1.c -o .$1.o
objdump -S .$1.o > $1.s
rm .$1.o
