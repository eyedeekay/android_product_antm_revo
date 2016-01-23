#! /bin/sh
#This file contains functions that automate rooting this tablet. Maybe others.

get_system_partition(){
	echo "/dev/block/nandd"
}

root(){
	echo 1
	adb shell rm /data/local/su
	adb push su /data/local
	adb shell su -c mount -o remount,rw -t yaffs2 $(get_system_partition) /system
	adb shell su -c mv /system/xbin/su /system/xbin/osu
	adb shell osu -c cat /data/local/su > /system/xbin/su
	adb shell osu -c chmod 6755 /system/xbin/su
}

undo_errors(){
	adb push su /data/local
	adb shell osu -c mount -o remount,rw -t yaffs2 $(get_system_partition) /system
	adb shell osu -c rm /system/xbin/su /data/local/su
	adb shell osu -c mv /system/xbin/osu /system/xbin/su
	adb shell su -c chmod 6755 /system/xbin/su
}
