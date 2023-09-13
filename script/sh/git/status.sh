#!/bin/sh

if [ $# -eq 0 ]; then
    git status
else
    for repository_name in $@; do
        echo
        echo
        echo
        echo 'path: $remote/'"$repository_name"
        cd "$remote/$repository_name"
        git status
    done
fi
