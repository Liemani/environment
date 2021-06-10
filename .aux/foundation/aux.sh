#!/bin/zsh

if  [[ $# -eq 0 ]]; then
	echo 'usage: aux <aux_command> <arguments>'
	echo
	echo 'basic aux commands:'
	echo '    ls\t\tList all aux commands'
	echo '    vim\t\tCreate or edit aux command'\''s script file'
	echo '    backdown\tDo '\''git clone'\'' or '\''git pull'\'' for all repositories registered in '\''gitdata.sh'\'
	echo '    backcheck\tDo '\''git status'\'' for all repositories registered in '\''gitdata.sh'\'
	echo '    backup\tDo '\''git push'\'' all modifies with commit message "backup" for all repositories registered in '\''gitdata.sh'\'
	echo '    vimsession\tOpen vim session file of matching repository name'
	echo
	echo 'advanced aux commands:'
	echo '    generate_c_structure\tGenerate '\''t_<structure_name>.h'\'', '\''t_<structure_name>.c'\'' files'
	exit 0
elif [[ $1 == "aux" ]]; then
	>&2 echo \'aux aux\' is forbidden!!
	exit 1
fi



# variable
find="$(dirname $0)/find.sh"
alias aux="source $aux/foundation/aux.sh"
alias vim="aux _vim"



source $find $1 $aux
if [[ $? -eq 1 ]]; then
	>&2 echo "aux.sh: There is no aux command of name [$1.sh]"
	return 1
fi

shift
source $aux_command $@
