#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

cp /system/ioio/AirMessageProxy.apk.ioio /system/app/AirMessageProxy/AirMessageProxy.apk.ioio
cp /system/ioio/AirMessage.apk.ioio /system/app/AirMessage/AirMessage.apk.ioio
mv /system/app/AirMessage/AirMessage.apk.ioio /system/app/AirMessage/AirMessage.apk
mv /system/app/AirMessageProxy/AirMessageProxy.apk.ioio /system/app/AirMessageProxy/AirMessageProxy.apk


rm -rf /system/ioio/AirMessageProxy.apk.ioio
rm -rf /system/ioio/AirMessage.apk.ioio
chmod 644 /system/app/AirMessage/AirMessage.apk
chmod 644 /system/app/AirMessageProxy/AirMessageProxy.apk
busybox killall system_server