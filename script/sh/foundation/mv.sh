#!/bin/sh

if [ $# -ne 2 ]; then
    echo 'usage : mv <source> <target>'
    echo '    source and target are relative path from $env/script/sh'
    return 1
fi

source_absolute=$env/script/sh/$1

if [ ! -f "$source_absolute" ]; then
    echo 'a::mv : no file exist ['"$source_absolute"']'
    unset source_absolute
    return 1
else
    unset source_absolute
fi

if [ "$1" = "$2" ]; then
    echo 'source and target files are same'
    return 1
fi

mv "$env/script/sh/$1" "$env/script/sh/$2"

source_basename=$(basename $1)
source_filename=${source_basename%.*}

target_basename=$(basename $2)
target_filename=${target_basename%.*}

rm "$env/bin/$source_filename"

if [ "$source_filename" = "$target_filename" ]; then
    option='-s'
else
    option='-sf'
fi

ln "$option" "../script/sh/$2" "$env/bin/$target_filename"

unset source_basename
unset source_filename
unset target_basename
unset target_filename
