#!/bin/bash


if [ $# -eq 0 ]; then
    echo "No download path provided"
    exit 1
fi

if [ ! -f .config ]; then
	echo CONFIG_TARGET_ar71xx=y > .config
	echo CONFIG_TARGET_ar71xx_generic_TLWR1043=y >> .config
	make defconfig
fi

ln -sfvT $1 dl
scripts/feeds update -a
scripts/feeds install -a
cp config.min .config
make download
