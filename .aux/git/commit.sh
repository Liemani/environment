#!/bin/bash

if [[ $# -ge 2 ]]; then
	echo 'usage: aux commit [<message>]'
	exit 1
fi

if [[ $# -eq 0 ]]; then
	1="backup"
fi

echo
echo
echo
echo path: \$git${$(pwd)#"$git"}

git add --all \
	&& git commit -m "$1"
