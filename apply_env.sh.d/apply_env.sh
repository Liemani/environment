#!/bin/sh

shell=$(basename $SHELL)
apply_sh_script="apply_$shell.sh"

if [ -f $apply_sh_script ]; then
    source $apply_sh_script
fi


unset apply_sh_script
