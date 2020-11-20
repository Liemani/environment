#!/bin/zsh

source $pathvar
source $env/gitdata.sh

for ((i = $#gitlist; i > 0; i--))
	gitlist[i]=$git/$gitlist[i]

zsh $aux/gitstatus.sh $gitlist
