#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage : touch <target>'
    echo '    target is relative path from $env/script/sh'
    return 1
fi

touch "$env/script/sh/$1" &&
    a ln "$1"
