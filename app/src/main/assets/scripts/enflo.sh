#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/ioio/floating/* /system

sleep 3

reboot

