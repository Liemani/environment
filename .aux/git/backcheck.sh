#!/bin/zsh

if [[ $# -ne 0 ]]; then
	repositories=($@)
	repositories=(${repositories/#/$git\/})
else
	repositories=($(find $git -depth 1 -type d))
fi

aux status $repositories
