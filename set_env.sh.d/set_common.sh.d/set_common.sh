#!/bin/sh

cd $(dirname $0)

sh set_environment.sh
sh set_git.sh

if [ ! -f ~/.vimrc ]; then
    cp $rc_files/.vimrc $HOME
fi
