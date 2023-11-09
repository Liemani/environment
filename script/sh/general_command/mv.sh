if [ $# -ne 2 ]; then
  echo 'usage : mv <source> <destination>'
  echo '  source and destination are relative path from $shellscript'
  return 1
fi



source_absolute="$shellscript/$1"

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



target_directory="$(dirname "$shellscript/$2")"
if [ ! -e "$target_directory" ]; then
  echo '[$shellscript/'"$(dirname $2)"'] is not exist'
  unset target_directory
  return 1
fi
unset target_directory



source_basename=$(basename $1)
source_filename=${source_basename%.*}

rm -f "$bin/$source_filename"

mv "$shellscript/$1" "$shellscript/$2"

target_basename=$(basename $2)
target_filename=${target_basename%.*}

ln -s "../script/sh/$2" "$bin/$target_filename"

unset source_basename
unset source_filename
unset target_basename
unset target_filename
