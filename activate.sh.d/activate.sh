apply_sh_script="apply_$shell.sh"

if [ -f "$apply_sh_script" ]; then
    . "./$apply_sh_script"
fi

unset apply_sh_script
