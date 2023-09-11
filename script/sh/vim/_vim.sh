#!/bin/sh

oldpwd=$PWD

if [ $# -eq 1 ]; then
    cd $(dirname $1)
    set -- $(basename $1)
elif [ $1 = '-S' ]; then
    cd $(dirname $2)
    set -- '-S' $(basename $2)
fi

2>/dev/null export git_root=$(git rev-parse --show-toplevel)
2>/dev/null export git_repo=$(basename $git_root)
2>/dev/null export git_branch=$(git rev-parse --abbrev-ref HEAD)

command vim $@

cd $oldpwd

unset git_root
unset git_repo
unset git_branch
unset oldpwd
