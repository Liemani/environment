#!/bin/ash

export git_root=$(2>/dev/null git rev-parse --show-toplevel)
export git_repo=$(2>/dev/null basename "$git_root")
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

if [ $git_repo ]; then
    echo -e " \e[37m(\e[92m$git_repo\e[37m/\e[92m$git_branch\e[37m)"
fi

unset git_root
unset git_repo
unset git_branch
