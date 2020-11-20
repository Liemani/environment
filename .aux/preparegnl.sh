#!/bin/zsh

if [[ $# -eq 0 ]]; then
	dest_path="."
else
	dest_path="$1"
fi

git clone https://github.com/mrjvs/42cursus_gnl_tests.git "$dest_path/42cursus_gnl_tests"
git clone https://github.com/C4r4c0l3/gnl-war-machine-v2019.git "$dest_path/gnl-war-machine-v2019"

unset dest_path
