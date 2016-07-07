#!/system/bin/sh

mv /system/etc/hosts /system/etc/hosts.orig
cp /system/etc/hosts.orig /system/ioio/hosts.orig
rm -rf /system/etc/hosts.orig

cp /system/ioio/hosts.ioio /system/etc/hosts.ioio
mv /system/etc/hosts.ioio /system/etc/hosts
chmod 644 /system/etc/hosts
rm -rf /system/ioio/hosts.ioio