#!/bin/ash

# set environment pathes
# source $env/uservar.sh

# source $base_directory/set_shell/common/set_alias.sh

# set rc file excutable

cd $(dirname $0)

if [ ! -f /etc/profile.d/run_ashrc.sh ]; then
	cp run_ashrc.sh /etc/profile.d
fi

if [ ! -f $HOME/.ashrc ]; then
	cp .ashrc $HOME
fi
