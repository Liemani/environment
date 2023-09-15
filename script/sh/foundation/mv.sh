#!/bin/sh

if [ $# -ne 2 ]; then
    echo 'mv'
    return 1
fi

mv $env/script/sh/$1 $env/script/sh/$2
#ln
