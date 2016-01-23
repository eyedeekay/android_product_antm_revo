#! /bin/sh

PROC_DETAILS="cpuinfo 
diskstats 
iomem 
meminfo 
modules
partitions
"

for d in $PROC_DETAILS; do
	mkdir -p proc
	adb shell cat "/proc/$d" > "proc/$d.log"
done
