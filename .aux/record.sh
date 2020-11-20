#!/bin/zsh

source $pathvar

echo "[20$(date "+%y/%m/%d %H:%M:%S")]" $@ >&2 >> $private/record
