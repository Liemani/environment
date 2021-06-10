#!/bin/zsh

if [[ $# -ne 0 ]]; then
	repositories=($@)
	repositories=(${repositories/#/$git\/})
else
	repositories=($(find $git -depth 1))
fi

aux status $repositories
