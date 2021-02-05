#!/bin/zsh

source $pathvar
source $env/gitdata.sh

if [[ -d $HOME/.ssh ]]; then
	git_address=git@github.com:
else
	git_address=https://github.com/
fi

for ((i = $#gitlist; i > 0; i--)); do
	gitlist[i]=$git/$gitlist[i]
	if [[ ! -d $gitlist[i] ]]; then
		git clone $git_address$git_user_id/$repository.git $gitlist[i]
		gitlist[i]=""
	fi
done

zsh $aux/gitpull.sh $gitlist
