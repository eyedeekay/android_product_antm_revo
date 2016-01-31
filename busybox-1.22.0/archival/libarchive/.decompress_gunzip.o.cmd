cmd_archival/libarchive/decompress_gunzip.o := /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc -Wp,-MD,archival/libarchive/.decompress_gunzip.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG  -D"BB_VER=KBUILD_STR(1.22.1)" -D"BB_BT=AUTOCONF_TIMESTAMP"  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os -DANDROID -D__ANDROID__ -DSK_RELEASE -nostdlib -march=armv7-a -msoft-float -mfloat-abi=softfp -mfpu=neon -mthumb -mthumb-interwork -fpic -fno-short-enums -fgcse-after-reload -frename-registers --sysroot="/usr/local/android-ndk/platforms/android-9/arch-arm"    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(decompress_gunzip)"  -D"KBUILD_MODNAME=KBUILD_STR(decompress_gunzip)" -c -o archival/libarchive/decompress_gunzip.o archival/libarchive/decompress_gunzip.c

deps_archival/libarchive/decompress_gunzip.o := \
  archival/libarchive/decompress_gunzip.c \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/seamless/z.h) \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/setjmp.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/cdefs.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/cdefs_elf.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/android/api-level.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/setjmp.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include-fixed/limits.h \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include-fixed/syslimits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/limits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/limits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/limits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/internal_types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/limits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/syslimits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/page.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/byteswap.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/endian.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/endian.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/endian.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/types.h \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include/stddef.h \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include/stdint.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/stdint.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/_types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/_types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/_wchar_limits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/posix_types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/stddef.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/compiler.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/posix_types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/types.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/machine/kernel.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/sysmacros.h \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include/stdbool.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/features.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/unistd.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/select.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/time.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/time.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/signal.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/string.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/malloc.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/signal.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/signal.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/sigcontext.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/siginfo.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/siginfo.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/ucontext.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/user.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/sysconf.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/capability.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/pathconf.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/stdio.h \
  /usr/local/android-ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9/include/stdarg.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/ctype.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/dirent.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/errno.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/errno.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/errno.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/errno.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/errno-base.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/fcntl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/fcntl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/fcntl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/fcntl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/inttypes.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/netdb.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/socket.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/socket.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/socket.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/sockios.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/sockios.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/uio.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/stdlib.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/alloca.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/strings.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/memory.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/libgen.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/poll.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/poll.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/poll.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/ioctl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/ioctl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/ioctl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/ioctl.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/ioctls.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/termbits.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/ioctl_compat.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/mman.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/mman.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/mman.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/mman-common.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/stat.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/stat.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/wait.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/resource.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/resource.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/resource.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm-generic/resource.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/wait.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/unistd.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/syscall.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/termios.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/termios.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/termios.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/time.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/param.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/param.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/param.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/pwd.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/grp.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/mntent.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/statfs.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/sys/vfs.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/arpa/inet.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/netinet/in.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/in.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/asm/byteorder.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/byteorder/little_endian.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/byteorder/swab.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/byteorder/generic.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/in6.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/linux/ipv6.h \
  /usr/local/android-ndk/platforms/android-9/arch-arm/usr/include/netinet/in6.h \
  include/xatonum.h \
  include/bb_archive.h \
    $(wildcard include/config/feature/tar/uname/gname.h) \
    $(wildcard include/config/tar.h) \
    $(wildcard include/config/dpkg.h) \
    $(wildcard include/config/dpkg/deb.h) \
    $(wildcard include/config/feature/tar/gnu/extensions.h) \
    $(wildcard include/config/feature/tar/to/command.h) \
    $(wildcard include/config/feature/tar/selinux.h) \
    $(wildcard include/config/cpio.h) \
    $(wildcard include/config/rpm2cpio.h) \
    $(wildcard include/config/rpm.h) \
    $(wildcard include/config/feature/ar/create.h) \

archival/libarchive/decompress_gunzip.o: $(deps_archival/libarchive/decompress_gunzip.o)

$(deps_archival/libarchive/decompress_gunzip.o):
