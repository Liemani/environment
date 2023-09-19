#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage : touch <target>'
    echo '    target is relative path from $env/script/sh'
    return 1
fi

basename=$(basename "$1")
filename=${basename%.*}

rm "$env/script/sh/$1"
rm "$env/bin/$filename"
