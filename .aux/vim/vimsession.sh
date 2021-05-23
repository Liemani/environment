#!/bin/zsh

if [[ $# -ne 1 ]]; then
	echo 'usage: aux vimsession <git_repo>'
	exit 1
fi



cd $git
	vim -S $(find . -ipath "*vimsession/*" -iname "$1")
