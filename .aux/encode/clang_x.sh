#!/bin/bash

# generate executable program for x86_64

if [[ $# -eq 0 ]]; then
	echo 'usage: aux clang_x [option] <filename> ...'
    exit 1
fi

clang -O1 -target x86_64-apple-macos10.12 $@
