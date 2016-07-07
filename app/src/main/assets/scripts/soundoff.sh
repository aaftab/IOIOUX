#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/media/audio/ui/PowerOn.ogg /system/media/audio/ui/PowerOn.ogg.bak
chmod 644 /system/etc/mixer_gains.xml