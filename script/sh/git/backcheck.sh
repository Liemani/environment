#!/bin/sh


if [ $# -ne 0 ]; then
    echo 'usage: backcheck'
    return 1
fi

oldpwd=$PWD



cd $remote
a status "$(ls)"



cd $oldpwd

unset oldpwd
