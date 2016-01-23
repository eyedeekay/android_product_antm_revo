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