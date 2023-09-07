#!/bin/ash

if [ ! -f /etc/profile.d/run_ashrc.sh ]; then
	cp $rc_files/run_ashrc.sh /etc/profile.d/run_ashrc.sh
fi
