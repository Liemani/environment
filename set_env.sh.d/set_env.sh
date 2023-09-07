#!/bin/sh

cd $(dirname $0)

source ../apply_env.sh.d/path_data.sh

if [ -d $env ]; then
	echo '['$env'] directory already exist'
	echo 'Terminate set environment process'
	exit 0
fi

shell=$(basename $SHELL)
set_to_shell_script=set_"$shell".sh

if [ -f $set_shell_script ]; then
	sh set_common.sh
	sh $set_to_shell_script
else
	echo 'Don'\''t support' "[$shell]"
fi

## log
# if [ $shell_name = 'ash' ]; then
# if [ -z $shell_name ]; then
