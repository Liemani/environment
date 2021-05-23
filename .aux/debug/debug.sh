#!/bin/zsh

echo \$@: $@
echo \$#: $#
typeset | grep @
temp=($@)
typeset | grep temp
