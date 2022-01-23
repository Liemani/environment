#!/bin/zsh

if [[ $# -eq 0 ]]; then
	1=backup
elif [[ $# -ge 2 ]]; then
	echo 'usage: push <message>'
	exit 1
fi

echo
echo
echo
echo path: \$git${$(pwd)#"$git"}

git add --all \
	&& git commit -m "$@"
echo $@
git push
