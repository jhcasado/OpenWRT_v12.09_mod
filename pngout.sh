#! /bin/bash
directory=$HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11.1/*
for file in $( find $directory -name '*.png' )
do
  echo $file
  ./pngout  "$file" -f3 -b128 -kbKGD
done 
