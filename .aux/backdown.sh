#!/bin/zsh

source $pathvar
source $env/gitdata.sh

if [[ -d $HOME/.ssh ]]; then
	git_address=git@github.com:
else
	git_address=https://github.com/
fi

if [[ $# -ne 0 ]]; then
	gitlist=()
	for argument in $@
		gitlist+=$argument
fi

for ((i = $#gitlist; i > 0; i--)); do
	if [[ -d $git/$gitlist[i] ]]; then
		gitlist[i]=$git/$gitlist[i]
	else
		git clone $git_address$git_user_id/$gitlist[i].git $git/$gitlist[i]
		gitlist[i]=""
	fi
done

zsh $aux/gitpull.sh $gitlist
