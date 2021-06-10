#!/bin/zsh

if [[ $# -ge 2 ]]; then
	echo 'usage: aux commit [<message>]'
	exit 0
fi

if [[ $# -eq 0 ]]; then
	1="backup"
fi

git add --all \
	&& git commit -m $1
