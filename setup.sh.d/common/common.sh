if [ ! -e "$environment" ]; then
  mv $(dirname $0)/../../../.environment $environment
fi

. $(dirname $0)/make_directory.sh

$SHELL $environment/setup.sh.d/common/setup_git.sh
$SHELL $environment/setup.sh.d/common/setup_shrc.sh
$SHELL $environment/setup.sh.d/common/setup_vimrc.sh
