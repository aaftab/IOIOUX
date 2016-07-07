#!/system/bin/sh

export PATH=/system/bin:$PATH

mount -o rw,remount /system

rm -rf  /system/media/audio/ui/TW_Volume_control.ogg


sleep 3

reboot