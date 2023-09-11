#!/bin/sh

cd $(dirname $0)

sh set_environment.sh
sh set_git.sh

shrc_file=$HOME"/."$shell"rc"
if [ ! -f $shrc_file ]; then
	cp $env/copy_source/.shrc $shrc_file
fi

if [ ! -f ~/.vimrc ]; then
    cp $env/copy_source/.vimrc $HOME
fi
