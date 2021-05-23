#!/bin/zsh

if [[ $# -eq 0 ]]; then
	git status
	exit 0
fi

for paths in $@; do
	echo -n "\n\n\n"
	echo path: $paths
	cd $paths
	git status
done
