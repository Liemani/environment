#!/bin/bash

. $(dirname $0)/make_directory.sh

mv $(dirname $0)/../../../environment $extern/environment

$environment/setup.sh.d/common/setup_git.sh
$environment/setup.sh.d/common/setup_shrc.sh
$environment/setup.sh.d/common/setup_vimrc.sh
