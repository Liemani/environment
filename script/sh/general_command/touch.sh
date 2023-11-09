if [ $# -ne 1 ]; then
  echo 'usage : touch <file>'
  echo '  `file` is relative path from $shellscript'
  return 1
fi

touch "$shellscript/$1" &&
  a ln "$1"
