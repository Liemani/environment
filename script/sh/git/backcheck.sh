#!/bin/sh

if [ $# -ne 0 ]; then
    repositories=($@)
    repositories=(${repositories/#/$git\/})
else
    repositories=($(find $git -depth 1 -type d))
fi

a status $repositories
