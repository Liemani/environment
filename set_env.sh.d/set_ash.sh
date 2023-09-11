#!/bin/ash

run_ashrc_source=$env/copy_source/run_ashrc.sh
run_asrc_destination=/etc/profile.d/run_ashrc.sh
if [ ! -f $run_asrc_destination ]; then
	cp $run_ashrc_source $run_asrc_destination
fi
