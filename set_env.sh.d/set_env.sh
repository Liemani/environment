cd $(dirname "$0")

. ../data/path.sh

if [ -d "$env" ]; then
    echo "[$env] directory already exist"
    echo 'Terminates set environment process'
    exit 1
fi

. ../data/variable.sh

set_to_shell_script=set_$shell.sh

"$SHELL" set_common.sh

if [ -f "$set_to_shell_script" ]; then
    "$SHELL" "$set_to_shell_script"
fi
