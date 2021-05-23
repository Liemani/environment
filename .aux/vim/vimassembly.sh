#!/bin/zsh

compile -S $1.c && vim $1.s
