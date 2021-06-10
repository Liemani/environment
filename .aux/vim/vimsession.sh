#!/bin/zsh

if [[ $# -ne 1 ]]; then
	echo 'usage: aux vimsession <repository_name>'
	exit 1
fi



cd $git  # for optimization
vimsession=$(find . -ipath "*vimsession/*" -iname "$1")
vimsessions=(${(f)vimsession})
vimsession_count=$#vimsessions
if [[ $vimsession_count -gt 1 ]]; then
	>&2 echo "$(basename $0): Multiple [$1] exist!!"
	>&2 echo "$vimsession"
elif [[ $vimsession_count -ne 1 ]]; then
	return 1
fi
vim -S $vimsessions[1]
