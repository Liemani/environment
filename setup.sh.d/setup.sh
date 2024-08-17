#!/bin/bash

if [ -d "$environment" ]; then
  echo "$environment : directory already exist"
  echo 'Terminates setup'
  return 0
fi



./$(dirname $0)/common/common.sh

set_to_shell_script=set_$shell.sh

if [ -f "$set_to_shell_script" ]; then
  $SHELL $set_to_shell_script
fi
