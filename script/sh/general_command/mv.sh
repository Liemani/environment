if [ $# -ne 2 ]; then
    echo 'usage : mv <source> <target>'
    echo '    source and target are relative path from $shellscript'
    return 1
fi



source_absolute=$shellscript/$1

if [ ! -e "$source_absolute" ]; then
    echo 'a_command::mv : no file exist ['"$source_absolute"']'
    unset source_absolute
    return 1
fi

unset source_absolute



if [ "$1" = "$2" ]; then
    echo 'a_command::mv : source and target are same'
    return 1
fi



소스와 타겟에 따라 다양한 경우가 존재할 수 있다
1. 소스가 디렉토리이고 타겟이 디렉토리인 경우
2. 소스가 디렉토리이고 타겟이 레귤러 파일인 경우
3. 소스가 레귤러 파일이고 타겟이 디렉토리인 경우
4. 소스가 레귤러 파일이고 타겟이 레귤러 파일인 경우 


mv "$shellscript/$1" "$shellscript/$2"

source_basename=$(basename $1)
source_filename=${source_basename%.*}

target_basename=$(basename $2)
target_filename=${target_basename%.*}

rm "$bin/$source_filename"

if [ "$source_filename" = "$target_filename" ]; then
    option='-s'
else
    option='-sf'
fi

ln "$option" "../script/sh/$2" "$bin/$target_filename"

unset source_basename
unset source_filename
unset target_basename
unset target_filename
