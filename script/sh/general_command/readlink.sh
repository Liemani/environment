if [ $# -ne 1 ]; then
    echo 'usage : readlink <a::command>'
    return 1
fi

readlink -f "$bin/$1"
