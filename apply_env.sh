#!/bin/sh

cd $HOME/remote/extern/env/data
source alias.sh
source path.sh
source variable.sh

cd $env/apply_env.sh.d
source apply_env.sh
