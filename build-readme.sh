#!

body(){
	BODY="Intro:
------
The ANTM Revo is a pretty regular Allwinner A33 Tablet as far as I know, but
I've bricked enough devices to know better than to assume that. So this
repository is going to be a clearinghouse for the information about the tablet,
and evenually will fulfill the specifications of the sunxi
[device](http://linux-sunxi.org/New_Device_howto)
[pages](http://linux-sunxi.org/New_Device_page)

####So Far
So far, the contents of this page include details about the system and a script
to root it automatically from a GNU/Linux PC. It doesn't actually require an
exploit, you just have to do it over ADB the first time. I don't know why the
amateur forum nerds seem to have so much trouble with it. Windows probably. I
don't even mean that in a derogatory way either. It's just that the sequence of
events \"List mounted filesystems, find /system, follow symlink to block device,
remount block device read-write,\" probably doesn't come naturally to people
who aren't involved in modifying their computers at that level. Which is why I'm
going to learn enough about batch files to release a script for them. The 
GNU/Linux version is pretty much always going to be better though, just because
it is so much easier.
"
	echo "$BODY" >> README.md
}

headline(){
	echo "ANTM Revo Device Information, An Allwinner A33/brcm Based Tablet" > README.md
	echo "================================================================" >> README.md
	echo "" >> README.md
}

loopinfo(){
	LIST="proc/cpuinfo.log 
proc/meminfo.log 
proc/modules.log 
proc/partitions.log 
proc/iomem.log 
disks/mount.log 
proc/diskstats.log 
wifi/wifi.log "
#dotbin/bins.list 
	for d in $LIST; do
		echo "" >> README.md
		echo "###$d" >> README.md
##		echo "" >> README.md
		cat "$d" >> README.md
	done
}
headline
body
loopinfo