#!/bin/sh

if [ ! -d $remote ]; then
	mkdir -p $remote
fi

if [ ! -d $local ]; then
	mkdir -p $local
fi

if [ ! -d $env ]; then
	mv ../.. $remote/env
fi
