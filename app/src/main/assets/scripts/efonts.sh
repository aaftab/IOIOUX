#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

cp /system/ioio/SamsungSans.apk.ioio /system/app/SamsungSans/SamsungSans.apk.ioio
mv /system/app/SamsungSans/SamsungSans.apk.ioio /system/app/SamsungSans/SamsungSans.apk
rm -rf /system/ioio/SamsungSans.apk.ioio
chmod 644 /system/app/SamsungSans/SamsungSans.apk
busybox killall system_server