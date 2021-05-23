#!/bin/zsh

if [[ $# -eq 0 ]]; then
	echo 'usage: aux vim <aux_commands>'
	exit 1
fi



declare -a file_array
for file in $@; do
	source $find $file $aux

	if [[ $? -eq 0 ]]; then
		file_array+=$aux_command
	else
		file_array+=$aux/$file
	fi
done
vim $file_array
