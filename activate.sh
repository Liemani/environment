oldpwd=$PWD



builtin cd $HOME/remote/extern/env/data

. ./variable.sh

. ./alias.sh
. ./path.sh

builtin cd $env/activate.sh.d
. ./activate.sh



builtin cd $oldpwd

unset oldpwd
