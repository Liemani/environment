#!/bin/zsh

cd $aux
if [[ $# -eq 0 ]]; then
	find . -iname "*.sh" -exec basename {} \; \
		| sed "s/\.sh$//"
elif [[ $# -eq 1 && $1 == "-l" ]]; then
	find . -iname "*.sh" \
		| sed "s/^\./\$aux/"
else
	echo 'usage: aux list [-l]'
	exit 1
fi
