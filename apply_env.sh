#!/bin/sh

oldpwd=$PWD
cd $HOME/remote/env/apply_env.sh.d

source apply_env.sh

cd $oldpwd
unset oldpwd
