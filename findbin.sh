#! /bin/sh

mkdir -p dotbin
adb shell ls -Rla | grep '.bin' > dotbin/bins.list


adb push sunxi-script_extractor /data/local/
adb shell /data/local/sunxi-script_extractor > maybe_script_bin.bin
adb shell cat /dev/block/nanda > also_maybe_script_bin.bin
bin2fex maybe_script_bin.bin
bin2fex also_maybe_script_bin.bin
