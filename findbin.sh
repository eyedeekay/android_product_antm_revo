#! /bin/sh

mkdir -p dotbin
adb shell ls -Rla | grep '.bin' > dotbin/bins.list
