#!/bin/sh


if [ $1 = 'a' ]; then
    >&2 echo '[a] as a_command is forbidden'
    return 1
fi

if [ $# -eq 0 ]; then
	>&2 echo 'usage: a <a_command> <arguments>'
    return 1
fi

script=$env/bin/$1
if [ -f $script ]; then
    shift
    source $script $@
else
	>&2 echo "a: There is no subcommand [$1]"
fi
unset script
