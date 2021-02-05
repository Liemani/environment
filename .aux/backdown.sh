#!/bin/zsh

source $pathvar
source $env/gitdata.sh

if [[ -d $HOME/.ssh ]]; then
	git_address=git@github.com:
else
	git_address=https://github.com/
fi

for ((i = $#gitlist; i > 0; i--))
	gitlist[i]=$git/$gitlist[i]
	if [[ ! -d $git/$gitlist[i] ]]; then
		git clone $git_address$git_user_id/$repository.git $git/$gitlist[i]
	fi

zsh $aux/gitpull.sh $gitlist
