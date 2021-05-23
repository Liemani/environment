#!/bin/zsh

if  [[ $# -eq 0 ]]; then
	echo 'usage: aux <aux_command> <arguments>'
	echo
	echo 'aux_commands:'
	echo '    ls\t\tList all aux commands'
	echo '    vim\t\tVim aux command'
	exit 1
elif [[ $1 == "aux" ]]; then
	>&2 echo \'aux aux\' is forbidden!!
	exit 1
fi



# variable
find="$(dirname $0)/find.sh"
alias aux="source $aux/foundation/aux.sh"
alias vim="aux _vim"



source $find $1 $aux

if [[ $? -eq 0 ]]; then
	shift
	source $aux_command $@
else
	>&2 echo "aux.sh: There is no aux command of name [$1.sh]"
fi
