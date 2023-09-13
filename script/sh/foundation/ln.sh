#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage: ln <target>'
    echo '    target is relative path from $env/script/sh'
    return 1
fi

basename=$(basename $1)
filename=${basename%.*}
target=../script/sh/$1

if [ -f $target ]; then
    ln -s $target $env/bin/$filename
else
# fixme: output absolute path
    echo 'ln: no file ['"$target"']'
fi

unset basename
unset filename
unset target
