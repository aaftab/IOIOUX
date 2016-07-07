#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

rm -rf /system/etc/mixer_gains.xml
cp /system/ioio/mixer_gains.xml.lite /system/etc/mixer_gains.xml.lite
mv /system/etc/mixer_gains.xml.lite /system/etc/mixer_gains.xml
chmod 644 /system/etc/mixer_gains.xml