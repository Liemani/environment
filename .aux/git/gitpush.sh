#!/bin/zsh

if [[ $# -eq 0 ]]; then
	git add --all \
		&& git commit -m backup \
		&& git push
	exit 0
fi

for paths in $@; do
	echo -n "\n\n\n"
	echo path: $paths
	cd $paths
	git add --all \
		&& git commit -m backup \
		&& git push
done
