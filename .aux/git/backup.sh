#!/bin/zsh

#	인자를 repository로 받기
#	if [[ $# -ne 0 ]]; then
#		repositories=($@)
#		repositories=(${repositories/#/$git\/})
#	else
#		repositories=($(find $git -depth 1))
#	fi

if [[ $# -eq 0 ]]; then
	1=backup
elif [[ $# -ge 2 ]]; then
	echo 'usage: backup <message>'
	exit 1
fi

repositories=($(find $git -depth 1 -type d))
for repository in $repositories; do
	cd $repository
	aux push "$@"
done
