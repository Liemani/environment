#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo 'usage: aux as <path>'
fi

if [[ ${1##*.} == "s" ]]; then
	baseName=${1%.s}
    as -arch arm64 -o $baseName.o $baseName.s &&
#   ld -o $baseName $baseName.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
    ld -o $baseName $baseName.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -arch arm64
else
    echo $1 'has wrong extension'
fi

unset baseName
