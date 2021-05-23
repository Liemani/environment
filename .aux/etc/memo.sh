#!/bin/zsh

echo "[20$(date "+%y/%m/%d %H:%M:%S")]" $@ >&2 >> $private/memo.txt
