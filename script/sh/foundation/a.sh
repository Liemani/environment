#!/bin/sh



if [ $1 = 'a' ]; then
    >&2 echo '[a] as a_command is forbidden'
    return 1
elif [ $# -eq 0 ]; then
    >&2 echo 'usage: a <a_command> <arguments>'
    return 1
fi



oldpwd=$PWD
a_command=$env/bin/$1

if [ -f $a_command ]; then
    shift
    source $a_command "$@"
    cd $oldpwd
else
    >&2 echo "a: There is no a_command [$1]"
fi

unset oldpwd
unset a_command
