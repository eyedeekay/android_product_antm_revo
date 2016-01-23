#! /bin/sh

mkdir -p dotbin
adb shell ls -Rla | grep '.bin' > dotbin/bins.list


adb push sunxi-script_extractor
adb shell /data/local/sunxi-script_extractor > maybe_script_bin.bin
