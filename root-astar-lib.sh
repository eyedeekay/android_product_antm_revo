#! /bin/sh
#This file contains functions that automate rooting this tablet. Maybe others.

#This function is pretty dumb rignt now but it can be smart soon.
get_system_partition(){
	echo "/dev/block/nandd"
}

clear_cache(){
	PREFIX="package:"
	adb shell rm -r /data/dalvik-cache
	for pkg in $(adb shell pm list packages); do
		TRIMMED=$(echo "$pkg" | sed "s/^$PREFIX//")
		adb shell su -c pm clear "$TRIMMED"
	done
}

install_superuser(){
	rm me.phh.superuser_1033.*
	wget -c https://f-droid.org/repo/me.phh.superuser_1033.apk
	wget -c https://f-droid.org/repo/me.phh.superuser_1033.apk.asc
	adb uninstall me.phh.superuser
	adb install me.phh.superuser_1033.apk
}

root(){
	echo 1
	adb shell rm /data/local/su
	adb push su /data/local
	adb shell su -c "mount -o remount,rw -t yaffs2 $(get_system_partition) /system"
#	These are just notes.
#	adb shell cp 6755 $BIN/$SU /su/bin/daemonsu
#	adb shell cp 6755 supolicy /su/bin/supolicy_wrapped
	adb shell su -c mv /system/xbin/su /system/xbin/osu
	adb shell osu -c cp "/data/local/su" "/system/xbin/su"
	adb shell osu -c chown root:root /system/xbin/su
	adb shell osu -c chmod 6755 /system/xbin/su
	adb shell osu -c rm /system/bin/su
	adb shell osu -c ln -s /system/xbin/su /system/bin/su
}

undo_errors(){
	adb push su /data/local
	adb shell osu -c mount -o remount,rw -t yaffs2 $(get_system_partition) /system
	adb shell osu -c rm /system/xbin/su /data/local/su
	adb shell osu -c mv /system/xbin/osu /system/xbin/su
	adb shell su -c chmod 6755 /system/xbin/su
}
