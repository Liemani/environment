#!/bin/sh

shell=$(basename $SHELL)
apply_sh_script="apply_$shell.sh"
echo $apply_sh_script

source apply_common.sh

if [ -f $apply_sh_script ]; then
    source $apply_sh_script
fi
