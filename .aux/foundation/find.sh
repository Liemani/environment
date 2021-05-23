#!/bin/zsh

if [[ $# -ne 2 ]]; then
	echo 'usage: source $find <what> <from>'
	echo
	echo 'This script is composed for in script purpose'
	exit 1
fi



aux_command=$(find $2 -iname $1.sh)
aux_command_array=(${(f)aux_command})
array_count=$#aux_command_array
if [[ $array_count -gt 1 ]]; then
	>&2 echo "find.sh: Multiple [$1.sh] exit!!"
	>&2 echo "$aux_command"
	set -- $aux_command
	aux_command=$1
	return 0
elif [[ $array_count -eq 1 ]]; then
	return 0
else
	return 1
fi
