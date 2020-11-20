#!/bin/zsh

source $pathvar

if [[ $# -eq 0 ]]; then
	vim -S $vimsession/default
else
	vim -S $vimsession/$1
fi
