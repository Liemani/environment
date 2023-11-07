if [ $# -lt 1 ]; then
  echo 'usage : compile <c file>'
  return 1
elif [ $# -lt 2 ]; then
else
  echo 'usage : compile <c file>'
  return 1
fi

clang -o ${1%.*}.s -S $1
