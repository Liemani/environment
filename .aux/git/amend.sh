#!/bin/zsh

if [[ $# -ne 0 ]]; then
	echo 'usage: aux commit'
	exit 0
fi

git add --all \
	&& git commit --amend --no-edit
