#!/bin/zsh



if [[ $# -eq 1 ]]; then
	tags_dir=$(pwd)
elif [[ $# -eq 2 ]]; then
	tags_dir=$(pwd)/$2
else
	echo 'usage: aux ctags <directory to configure> <directory for tags>'
	exit 0
fi



ctags -a -f $tags_dir/tags $(find -L $1 -iname "*.[hc]")
