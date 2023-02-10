#!/bin/zsh

if [[ ! ( $# -eq 0 || $# -eq 1 ) ]]; then
	echo 'usage: aux vimsession [<repository name>]'
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



if [[ $# -eq 0 ]]; then
#	repositoryDir=$git/$(basename $(git rev-parse --show-toplevel))
	repositoryDir=.
elif [[ $# -eq 1 ]]; then
	repositoryDir=$git/$1
fi

if [[ -f $repositoryDir/.vimsession ]]; then
	cd $repositoryDir
	vim -S .vimsession
else
	vimsessionDir=$git/.private/.vimsession

	if [[ -f $vimsessionDir/$1 ]]; then
		cd $vimsessionDir
		vim -S $1
	else
		echo "$0: [$vimsessionDir/$1] is not a file!"
	fi

	unset vimsessionDir
fi

unset repositoryDir
