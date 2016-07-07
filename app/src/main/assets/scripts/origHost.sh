#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/etc/hosts /system/etc/hosts.ioio
cp /system/etc/hosts.ioio /system/ioio/hosts.ioio
rm -rf /system/etc/hosts.ioio

cp /system/ioio/hosts.orig /system/etc/hosts.orig
mv /system/etc/hosts.orig /system/etc/hosts
chmod 644 /system/etc/hosts
rm -rf /system/ioio/hosts.orig