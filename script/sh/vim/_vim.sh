#!/bin/sh

if [ "$1" != '-S' ]; then
    cd "$(dirname "$1")"
else
    cd "$(dirname "$2")"
fi

export git_root=$(2>/dev/null git rev-parse --show-toplevel)
export git_repo=$(2>/dev/null basename "$git_root")
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

>/dev/null cd -

command vim "$@"



unset git_root
unset git_repo
unset git_branch
