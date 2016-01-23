#! /bin/sh

RECACHE_DETAILS="last_install
last_locale
last_log
last_log.1
last_log.2
last_log.3
"

for d in $RECACHE_DETAILS; do
	mkdir -p recoverycache
	adb shell cat "/cache/recovery/$d" > "recoverycache/$d.log"
done
