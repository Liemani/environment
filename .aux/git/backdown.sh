#!/bin/zsh

source $env/gitdata.sh

if [[ $# -ne 0 ]]; then
	repositories=($@)
fi

declare -a repository_paths
for repository in $repositories; do
	if [[ -d $git/$repository ]]; then
		repository_paths+=$git/$repository
	else
		git clone git@github.com:$git_user_id/$repository.git $git/$repository \
			|| git clone https://github.com/$git_user_id/$repository.git $git/$repository
	fi
done

aux gitpull $repository_paths
