#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

rm -rf /system/app/AirMessage*


sleep 3

reboot

