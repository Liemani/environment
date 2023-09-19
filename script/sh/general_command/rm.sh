#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage : touch <target>'
    echo '    target is relative path from $shellscript'
    return 1
fi

basename=$(basename "$1")
filename=${basename%.*}

rm "$shellscript/$1"
rm "$bin/$filename"
