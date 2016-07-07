#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

rm -rf /system/etc/mixer_gains.xml
cp /system/ioio/sound/mixer_gains.xml.high /system/etc/mixer_gains.xml.high
mv /system/etc/mixer_gains.xml.high /system/etc/mixer_gains.xml
chmod 644 /system/etc/mixer_gains.xml