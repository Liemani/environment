#!/bin/zsh

if [[ $# -eq 1 ]]; then
	cd $(dirname $1)
	1=$(basename $1)
elif [[ $1 == "-S" ]]; then
	cd $(dirname $2)
	2=$(basename $2)
fi

2>/dev/null export git_root=$(git rev-parse --show-toplevel)
2>/dev/null export git_repo=$(basename $git_root)
2>/dev/null export git_branch=$(git rev-parse --abbrev-ref HEAD)

command vim $@
