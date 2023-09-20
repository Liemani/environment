#!/bin/ash

# PS1='\t \h:\w\$ '

PS1='$(date "+%H:%M") \w$(ash $env/data/ash_prompt_git.sh) \$ '
