#!/bin/sh

cd $(dirname $0)

sh set_environment.sh
sh set_git.sh

shrc=$HOME/.$shell'rc'
if [ ! -f "$shrc" ]; then
    cp "$env/copy_source/.shrc" "$shrc"
fi

vimrc=$HOME/.vimrc
if [ ! -f "$vimrc" ]; then
    cp "$env/copy_source/.vimrc" "$vimrc"
fi
