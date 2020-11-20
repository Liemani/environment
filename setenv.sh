#!/bin/zsh

source $(dirname $0)/.data/.zshrc



if [[ -z $programming ]]; then
	echo source $data/.zshrc >> $HOME/.zshrc
	echo source $data/.vimrc >> $HOME/.vimrc
fi



backbone_path_list=(
	$programming
	$git
	$local
	)

for backbone_path in $backbone_path_list
	if [[ ! -d $backbone_path ]]; then
		mkdir $backbone_path
	fi

unset backbone_path_list
unset backbone_path



if [[ ! -d $env ]]; then
	env_tmp=$(dirname $0)
	if [[ $env_tmp =~ "\." ]]; then
		env_tmp="$(pwd)"
	elif [[ ! $env_tmp =~ ^/ ]]; then
		env_tmp=$(pwd)/$env_tmp
	fi

	mv $env_tmp $git

	unset env_tmp
fi



source $env/gitdata.sh

git config --global user.name $git_user_id
git config --global user.email $git_user_email
git config --global core.excludesFile $data/.gitignore

if [[ -d $HOME/.ssh ]]; then
	git_address=git@github.com:
else
	git_address=https://github.com/
fi

for repository in $gitlist
	if [[ ! -d $git/$repository ]]; then
		echo path: $repository
		git clone $git_address$git_user_id/$repository.git $git/$repository
		echo
	fi



if [[ ! -d $private ]]; then
	mkdir $private;
fi



unset gitlist
unset git_user_name
unset git_user_email
unset git_address
unset repository
