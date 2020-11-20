#!/bin/zsh

if [[ $# == 0 ]]; then
	git add --all && git commit -m backup && git push
	exit 0
fi

oldpath_tmp=$(pwd)

for repository in $@; do
	echo -n "\n\n\n"
	echo path: $repository
	cd $repository && git add --all && git commit -m backup && git push
done

cd $oldpath_tmp
