#!/bin/ash

export git_root=$(2>/dev/null git rev-parse --show-toplevel)
export git_repo=$(2>/dev/null basename "$git_root")
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

if [ $git_repo ]; then
    echo " ($git_repo/$git_branch)"
fi

unset git_root
unset git_repo
unset git_branch
