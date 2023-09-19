#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'usage : vim <a::command>'
    return 1
fi

vim "$bin/$1"
