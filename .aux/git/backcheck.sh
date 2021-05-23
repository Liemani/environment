#!/bin/zsh

source $env/gitdata.sh

if [[ $# -ne 0 ]]; then
	repositories=($@)
fi

declare -a repository_paths
for repository in $repositories; do
	if [[ -d $git/$repository ]]; then
		repository_paths+=$git/$repository
	fi
done

aux gitstatus $repository_paths
