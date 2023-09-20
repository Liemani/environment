#!/bin/sh

cd $(dirname "$0")

source ../data/path.sh

if [ -d "$env" ]; then
    echo "[$env] directory already exist"
    echo 'Terminates set environment process'
    exit 1
fi

source ../data/variable.sh

set_to_shell_script=set_$shell.sh

sh set_common.sh

if [ -f "$set_to_shell_script" ]; then
    sh "$set_to_shell_script"
fi
