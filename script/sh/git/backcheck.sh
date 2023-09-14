#!/bin/sh

if [ $# -ne 0 ]; then
    echo 'usage: backcheck'
    return 1
fi

cd $remote
a status "$(ls)"
