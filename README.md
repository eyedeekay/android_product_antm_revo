ANTM Revo Device Information, An Allwinner A33/brcm Based Tablet
================================================================

Intro:
------
The ANTM Revo is a pretty regular Allwinner A33 Tablet as far as I know, but
I've bricked enough devices to know better than to assume that. So this
repository is going to be a clearinghouse for the information about the tablet,
and evenually will fulfill the specifications of the sunxi
[device](http://linux-sunxi.org/New_Device_howto)
[pages](http://linux-sunxi.org/New_Device_page)

Extended Specs: These are the specs, with the exact text written on the
respective hardware, spaced as on the respctive hardware.

Allwinner A33 Quad-Core Processor, not visible at current stage of
disassembly.

SK Hynix 8gb NAND Flash		H27UCG8T2ETA
                        	BC      412A
                        	M18LRE11801

Mysterious chip labeled only    24,000  
                                 MHZ 

ELPIDA 1GB DRAM			J8416E6MB
                		-GN-F
                		1328R6EK600

AXP223 Power Management		E6040AC 6981

Mysterious chip labeled only 	26,000
				 MHZ

Mysterious chip labeled		263
				7660
				BRAC
				.

AP6210 Wi-Fi/BT			AP6210
				K10EA0A2
				1443

SILEAD Touchscreen Controller	Silead
				GSL2681
				?unknown line?

Additional unknown chip





####So Far
So far, the contents of this page include details about the system and a script
to root it automatically from a GNU/Linux PC. It doesn't actually require an
exploit, you just have to do it over ADB the first time. I don't know why the
amateur forum nerds seem to have so much trouble with it. Windows probably. I
don't even mean that in a derogatory way either. It's just that the sequence of
events "List mounted filesystems, find /system, follow symlink to block device,
remount block device read-write," probably doesn't come naturally to people
who aren't involved in modifying their computers at that level. Which is why I'm
going to learn enough about batch files to release a script for them. The 
GNU/Linux version is pretty much always going to be better though, just because
it is so much easier.


###proc/cpuinfo.log
Processor	: ARMv7 Processor rev 5 (v7l)
processor	: 0
BogoMIPS	: 621.11

Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
CPU implementer	: 0x41
CPU architecture: 7
CPU variant	: 0x0
CPU part	: 0xc07
CPU revision	: 5

Hardware	: sun8i
Revision	: 0000
Serial		: 032c1898a91500000000

###proc/meminfo.log
MemTotal:        1027196 kB
MemFree:          315768 kB
Buffers:           16036 kB
Cached:           306944 kB
SwapCached:            0 kB
Active:           234952 kB
Inactive:         251836 kB
Active(anon):     163824 kB
Inactive(anon):      320 kB
Active(file):      71128 kB
Inactive(file):   251516 kB
Unevictable:           0 kB
Mlocked:               0 kB
HighTotal:        270336 kB
HighFree:          29752 kB
LowTotal:         756860 kB
LowFree:          286016 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:        163800 kB
Mapped:            87400 kB
Shmem:               356 kB
Slab:             133824 kB
SReclaimable:      78836 kB
SUnreclaim:        54988 kB
KernelStack:        4680 kB
PageTables:         6188 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:      513596 kB
Committed_AS:   14084476 kB
VmallocTotal:     245760 kB
VmallocUsed:       41796 kB
VmallocChunk:     152452 kB

###proc/modules.log
gslX680new 420184 0 - Live 0x00000000 (F)
mma7660 6674 0 - Live 0x00000000
sunxi_schw 12559 0 - Live 0x00000000 (O)
cdc_ether 5099 0 - Live 0x00000000
rtl8150 9023 0 - Live 0x00000000
mcs7830 6292 0 - Live 0x00000000
qf9700 7805 0 - Live 0x00000000
asix 17150 0 - Live 0x00000000
usbnet 17700 4 cdc_ether,mcs7830,qf9700,asix, Live 0x00000000
sunxi_keyboard 3021 0 - Live 0x00000000
sw_device 13612 0 - Live 0x00000000
vfe_v4l2 445340 0 - Live 0x00000000
gc0308 10543 0 - Live 0x00000000
gc2145 12416 0 - Live 0x00000000
vfe_subdev 4523 3 vfe_v4l2,gc0308,gc2145, Live 0x00000000
vfe_os 3951 2 vfe_v4l2,vfe_subdev, Live 0x00000000
cci 21602 4 gc0308,gc2145, Live 0x00000000
videobuf_dma_contig 5567 1 vfe_v4l2, Live 0x00000000
videobuf_core 16520 2 vfe_v4l2,videobuf_dma_contig, Live 0x00000000
bcmdhd 556681 0 - Live 0x00000000
leds_sunxi 1359 0 - Live 0x00000000
mali 208794 20 - Live 0x00000000 (O)
lcd 38432 0 - Live 0x00000000
disp 992816 8 mali,lcd, Live 0x00000000
nand 280146 6 - Live 0x00000000 (O)

###proc/partitions.log
major minor  #blocks  name

 179        0    3872256 mmcblk0
 179        1    3868160 mmcblk0p1
  93        0      32768 nanda
  93        8      16384 nandb
  93       16      16384 nandc
  93       24     786432 nandd
  93       32      16384 nande
  93       40      32768 nandf
  93       48     524288 nandg
  93       56      16384 nandh
  93       64      16384 nandi
  93       72    6037504 nandj

###proc/iomem.log
01c02000-01c024dc : sunxi_dmac
01c0f000-01c0ffff : sunxi-mmc
01c10000-01c10fff : sunxi-mmc
01c28000-01c283ff : uart
01c28400-01c287ff : uart
01c2ac00-01c2afff : twi.0
  01c2ac00-01c2afff : twi.0
01c2b000-01c2b3ff : twi.1
  01c2b000-01c2b3ff : twi.1
01c2b400-01c2b7ff : twi.2
  01c2b400-01c2b7ff : twi.2
01c40000-01c40100 : Mali_GP
01c41000-01c41200 : Mali_L2
01c42000-01c42100 : Mali_PMU
01c43000-01c43100 : Mali_GP_MMU
01c44000-01c44100 : Mali_PP0_MMU
01c45000-01c45100 : Mali_PP1_MMU
01c48000-01c49100 : Mali_PP0
01c4a000-01c4b100 : Mali_PP1
01c62000-01c620c4 : MBUS_PMU
  01c62000-01c620c4 : MBUS_PMU
01cb0000-01cb0fff : csi
  01cb0000-01cb0fff : module
01cb8000-01cb8fff : isp
  01cb8000-01cb8fff : module
40000000-7fffffff : System RAM
  40008000-408e93d3 : Kernel code
  4093e000-40b216c7 : Kernel data
f1c0c000-f1c0c3fc : lcd0
f1c20000-f1c202dc : ccmu
f1c20800-f1c20a7c : pioc
f1c21400-f1c2143c : pwm
f1ca0000-f1ca02fc : dsi0
f1ca1000-f1ca10fc : dsi0_dphy
f1e00000-f1e0022c : fe0
f1e60000-f1e600fc : be0
f1e70000-f1e700fc : drc0
f1e70200-f1e702fc : wb0
f1e80000-f1e802fc : sat0

###disks/mount.log
rootfs / rootfs ro,relatime 0 0
tmpfs /dev tmpfs rw,seclabel,nosuid,relatime,mode=755 0 0
devpts /dev/pts devpts rw,seclabel,relatime,mode=600 0 0
proc /proc proc rw,relatime 0 0
sysfs /sys sysfs rw,seclabel,relatime 0 0
selinuxfs /sys/fs/selinux selinuxfs rw,relatime 0 0
none /acct cgroup rw,relatime,cpuacct 0 0
none /sys/fs/cgroup tmpfs rw,seclabel,relatime,mode=750,gid=1000 0 0
tmpfs /mnt/secure tmpfs rw,seclabel,relatime,mode=700 0 0
tmpfs /mnt/asec tmpfs rw,seclabel,relatime,mode=755,gid=1000 0 0
tmpfs /mnt/obb tmpfs rw,seclabel,relatime,mode=755,gid=1000 0 0
none /dev/cpuctl cgroup rw,relatime,cpu 0 0
debugfs /sys/kernel/debug debugfs rw,relatime 0 0
/dev/block/by-name/system /system ext4 ro,seclabel,relatime,data=ordered 0 0
/dev/block/by-name/cache /cache ext4 rw,seclabel,nosuid,nodev,noatime,nomblk_io_submit,data=ordered 0 0
/dev/block/by-name/UDISK /data ext4 rw,seclabel,nosuid,nodev,noatime,nomblk_io_submit,noauto_da_alloc,data=ordered 0 0
/dev/fuse /mnt/shell/emulated fuse rw,nosuid,nodev,relatime,user_id=1023,group_id=1023,default_permissions,allow_other 0 0
/dev/block/vold/179:1 /mnt/extsd vfat rw,dirsync,nosuid,nodev,noexec,relatime,uid=1000,gid=1015,fmask=0702,dmask=0702,allow_utime=0020,codepage=cp437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro 0 0

###proc/diskstats.log
   7       0 loop0 0 0 0 0 0 0 0 0 0 0 0
   7       1 loop1 0 0 0 0 0 0 0 0 0 0 0
   7       2 loop2 0 0 0 0 0 0 0 0 0 0 0
   7       3 loop3 0 0 0 0 0 0 0 0 0 0 0
   7       4 loop4 0 0 0 0 0 0 0 0 0 0 0
   7       5 loop5 0 0 0 0 0 0 0 0 0 0 0
   7       6 loop6 0 0 0 0 0 0 0 0 0 0 0
   7       7 loop7 0 0 0 0 0 0 0 0 0 0 0
 253       0 zram0 0 0 0 0 0 0 0 0 0 0 0
 179       0 mmcblk0 225 3763 9707 570 14 0 14 30 0 460 600
 179       1 mmcblk0p1 224 3763 9699 570 14 0 14 30 0 460 600
  93       0 nanda 34 0 41 20 0 0 0 0 0 10 10
  93       8 nandb 1 0 8 0 0 0 0 0 0 0 0
  93      16 nandc 1 0 8 0 0 0 0 0 0 0 0
  93      24 nandd 3455 736 321026 22720 0 0 0 0 0 9720 22660
  93      32 nande 1 0 8 0 0 0 0 0 0 0 0
  93      40 nandf 1 0 8 0 0 0 0 0 0 0 0
  93      48 nandg 59 54 892 40 10 2 96 10 0 40 50
  93      56 nandh 1 0 8 0 0 0 0 0 0 0 0
  93      64 nandi 1 0 8 0 0 0 0 0 0 0 0
  93      72 nandj 3492 1942 305164 23840 1100 2032 25072 24210 0 12810 48000

###wifi/wifi.log
<4>[ 1670.039948] dhd_pno_get_for_batch : wifi location service is not supported
<4>[ 1670.048282] dhd_pno_stop_for_batch : wifi location service is not supported
<4>[ 2748.963405] dhd_pno_get_for_batch : wifi location service is not supported
<4>[ 2748.971889] dhd_pno_stop_for_batch : wifi location service is not supported
<4>[ 2749.320428] wl_android_wifi_off in 1
<4>[ 2749.320536] wl_android_wifi_off in 2: g_wifi_on=1
<4>[ 2749.427709] [ap6xxx]: sdio wifi power state: off
<4>[ 2749.427746] wl_android_wifi_off out
<4>[ 2750.894215] wl_android_wifi_on in 1
<4>[ 2750.894224] wl_android_wifi_on in 2: g_wifi_on=0
<4>[ 2750.995529] [ap6xxx]: sdio wifi power state: on
<4>[ 2751.907371] wl_android_wifi_on: Success
<4>[ 2754.035674] dhd_pno_get_for_batch : wifi location service is not supported
<4>[ 2754.043357] dhd_pno_stop_for_batch : wifi location service is not supported
<5>[ 1670.064473] init: starting 'iprenew_wlan0'
<5>[ 1670.077013] init: process 'iprenew_wlan0', pid 2849 exited
<5>[ 2748.845064] init: service 'dhcpcd_wlan0' is being killed
<5>[ 2748.846576] init: process 'dhcpcd_wlan0', pid 2077 exited
<4>[ 2749.142525] link down if wlan0 may call cfg80211_disconnected. event : 16, reason=2 from
<6>[ 2749.145785] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
<5>[ 2754.253433] init: starting 'dhcpcd_wlan0'
<7>[ 2766.560182] wlan0: no IPv6 routers present
<4>[ 1731.713772] bcmsdh_sdmmc_suspend Enter
<4>[ 1731.779227] bcmsdh_sdmmc_resume Enter
<4>[ 1731.779235] bcmsdh_sdmmc_resume Enter
<4>[ 2749.325290] bcmsdh_set_irq: Flag = 0
<4>[ 2750.894172] dhd_conf_set_fw_name_by_chip: firmware_path=/system/vendor/modules/fw_bcm40181a2.bin
<4>[ 2750.894203] Compiled in drivers/net/wireless/bcmdhd on
<4>[ 2751.438510] dhd_conf_set_fw_name_by_chip: firmware_path=/system/vendor/modules/fw_bcm40181a2.bin
<4>[ 2751.439575] Final fw_path=/system/vendor/modules/fw_bcm40181a2.bin
<4>[ 2751.720626] bcmsdh_set_drvdata: Enter
<4>[ 2751.720643] bcmsdh_set_irq: Flag = 1
