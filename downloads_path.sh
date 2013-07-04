#!/bin/bash


if [ $# -eq 0 ]; then
    echo "No path provided"
    exit 1
fi

if [ ! -f $file ]; then
	echo CONFIG_TARGET_ar71xx=y > .config
fi

make defconfig
ln -sfvT $1 dl
make download
