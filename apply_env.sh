#!/bin/sh

cd $HOME/remote/env/data
source alias.sh
source path.sh
source variable.sh

cd $HOME/remote/env/apply_env.sh.d
source apply_env.sh
