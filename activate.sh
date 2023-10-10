oldpwd=$PWD



cd $HOME/remote/extern/env/data

. ./variable.sh

. ./alias.sh
. ./path.sh

cd $env/activate.sh.d
. ./activate.sh



cd $oldpwd

unset oldpwd
