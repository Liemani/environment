#!/bin/sh

if [ $# -ge 2 ]; then
	echo 'usage: commit [<commit message>]'
	return 1
fi

if [ $# -eq 0 ]; then
    set -- 'backup'
fi

echo
echo
echo
echo 'path: $remote/'"${PWD#$remote}"

git add --all \
	&& git commit -m "$1"
