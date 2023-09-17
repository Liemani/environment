#!/bin/sh

if [ "$1" = '-S' ]; then
    cd $(dirname "$2")
else
    cd $(dirname "$1")
fi

export git_root=$(2>/dev/null git rev-parse --show-toplevel)
export git_repo=$(2>/dev/null basename $git_root)
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

cd -

command vim "$@"



unset git_root
unset git_repo
unset git_branch
