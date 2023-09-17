#!/bin/sh

oldpwd=$PWD



if [ $# -eq 1 ]; then
    cd $(dirname $1)
    set -- "$(basename $1)"
elif [ "$1" = '-S' ]; then
    cd $(dirname $2)
    set -- '-S' "$(basename $2)"
fi

export git_root=$(2>/dev/null git rev-parse --show-toplevel)
export git_repo=$(2>/dev/null basename $git_root)
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

command vim "$@"



cd $oldpwd

unset git_root
unset git_repo
unset git_branch
unset oldpwd
