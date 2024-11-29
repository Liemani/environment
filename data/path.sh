if [[ $SHELL =~ .*/zsh ]]; then
  ENVHOME=$(realpath "${(%):-%x}"/../../..)
elif [[ $SHELL =~ .*/bash ]]; then
  ENVHOME=$(realpath "${BASH_SOURCE[0]}"/../../..)
fi

export environment=$ENVHOME/.environment
  export bin=$environment/bin
  export script=$environment/script
export local=$ENVHOME/local
  export receive=$local/receive
export remote=$ENVHOME/remote
  export personal=$remote/personal
    export private=$personal/.private
      export address=$private/data/address.sh
    export library_cpp=$personal/library_cpp
    export playground=$personal/playground
  export extern=$remote/extern
        export shellscript=$script/sh
  export work=$remote/work

export derivedData=$HOME/Library/Developer/Xcode/DerivedData
