#!/bin/zsh

if [[ $# -ne 1 ]]; then
	echo 'usage: aux vimsession <repository_name>'
	exit 1
fi



# cd $git  # for optimization
# vimsession=$(find . -ipath "*vimsession/*" -iname "$1")
# vimsessions=(${(f)vimsession})
# if [[ $#vimsessions -gt 1 ]]; then
# 	>&2 echo "$(basename $0): [$#vimsessions] of [$1] exist!!"
# 	>&2 echo "$vimsessions"
# elif [[ $#vimsession -eq 0 ]]; then
# 	>&2 echo "$(basename $0): Couldn't find vimsession of name [$1]!!"
# 	return 1
# fi
# vim -S $vimsessions[1]



# 2021-09-15
vimsession=$git/$1/.vimsession
if [[ -f $vimsession ]]; then
	cd $vimsession
	vim -S $vimsession
else
	vimsession=$git/.private/.vimsession/$1
	if [[ -f $vimsession ]]; then
		cd $vimsession
		vim -S $vimsession
	fi
fi

unset vimsession
