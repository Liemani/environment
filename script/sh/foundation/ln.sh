#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage: ln <target>'
    echo '    target is relative path from $env/script/sh'
    return 1
fi

basename=$(basename $1)
filename=${basename%.*}

ln -s ../script/sh/$1 $env/bin/$filename

unset basename
unset filename
