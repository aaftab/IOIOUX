#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/app/SamsungSans/SamsungSans.apk /system/app/SamsungSans/SamsungSans.apk.ioio
cp /system/app/SamsungSans/SamsungSans.apk.ioio /system/ioio/SamsungSans.apk.ioio
rm -rf /system/app/SamsungSans/SamsungSans.apk.ioio
busybox killall system_server