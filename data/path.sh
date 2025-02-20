if [[ $SHELL =~ .*/zsh ]]; then
  export ENVHOME=$(realpath $(dirname ${(%):-%x})/../..)
elif [[ $SHELL =~ .*/bash ]]; then
  export ENVHOME=$(realpath $(dirname ${BASH_SOURCE[0]})/../..)
fi

export environment=$ENVHOME/.environment
  export bin=$environment/bin
  export script=$environment/script

export personal=$ENVHOME/personal
  export private=$personal/.private
    export address=$private/data/address.sh
  export playground=$personal/0_areas/playground

export work=$ENVHOME/work

export derivedData=$HOME/Library/Developer/Xcode/DerivedData
