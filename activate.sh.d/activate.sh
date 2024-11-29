. $environment/data/variable.sh
. $environment/data/alias.sh

if [ -e "$address" ]; then
  . $address
fi

apply_sh_script=$environment/activate.sh.d/apply_$shell.sh

if [ -f "$apply_sh_script" ]; then
  . $apply_sh_script
fi
