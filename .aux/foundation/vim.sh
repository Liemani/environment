#!/bin/zsh

if [[ $# -eq 0 ]]; then
	echo 'usage: aux vim <aux_commands>'
	return 1
fi



declare -a aux_file_array

for file in $@; do
	source $aux_find $file

	if [[ $? -eq 0 ]]; then
		aux_file_array+=$aux_return
	else
		aux_file_array+=$aux/$file.sh
	fi
done

vim $aux_file_array

unset aux_return
unset aux_file_array
