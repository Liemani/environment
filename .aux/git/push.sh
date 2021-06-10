#!/bin/zsh

if [[ $# -eq 0 ]]; then
	1=backup
fi

echo
echo
echo
echo path: \$git${$(pwd)#"$git"}

git add --all \
	&& git commit -m "$@"
git push
