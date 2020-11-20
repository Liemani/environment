#!/bin/zsh

if [[ $# == 0 ]]; then
	git pull
	exit 0
fi

oldpath_tmp=$(pwd)

for repository in $@; do
	echo -n "\n\n\n"
	echo path: $repository
	cd $repository && git status
done

cd $oldpath_tmp
