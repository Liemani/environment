#!/bin/zsh

if [ $# -ne 1 ]; then
	echo 'usage: vim <a_command>'
	return 1
fi

vim "$env/bin/$1"
