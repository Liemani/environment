#!/bin/zsh

if  [[ $# -eq 0 ]]; then
	echo 'usage: aux <aux_command> <arguments>'
	echo
	echo 'basic aux commands:'
	echo '    list\tList all aux commands'
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
	return 1
fi



aux_find="$(dirname $0)/find.sh"
. $aux_find $1

if [[ $? -eq 1 ]]; then
	>&2 echo "aux.sh: There is no aux command of name [$1]"
	return 1
fi

shift
. $aux_return $@

unset aux_return
