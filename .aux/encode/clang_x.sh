#!/bin/bash

# generate executable program for x86_64

if [[ $# -eq 0 ]]; then
	echo 'usage: aux clang_x [option] <file> ...'
    exit 1
fi

filename=${1%.*}

# clang -O1 -target x86_64-apple-macos10.12 -o $filename $@
clang -target x86_64-apple-macos10.12 -o $filename $@
