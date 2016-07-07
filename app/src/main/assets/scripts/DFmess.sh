#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /


mv /system/app/AirMessage/AirMessage.apk /system/app/AirMessage/AirMessage.apk.ioio
mv /system/app/AirMessageProxy/AirMessageProxy.apk /system/app/AirMessageProxy/AirMessageProxy.apk.ioio
cp /system/app/AirMessageProxy/AirMessageProxy.apk.ioio /system/ioio/AirMessageProxy.apk.ioio
cp /system/app/AirMessage/AirMessage.apk.ioio /system/ioio/AirMessage.apk.ioio

rm -rf /system/app/AirMessage/AirMessage.apk.ioio
rm -rf /system/app/AirMessageProxy/AirMessageProxy.apk.ioio
busybox killall system_server