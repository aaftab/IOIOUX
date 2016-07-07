#!/system/bin/sh

mount -o rw,remount /system

cp -p /system/ioio/sound/silent.ogg /system/media/audio/ui/PowerOn.ogg
cp -p /system/ioio/sound/silent.ogg /system/media/audio/ui/PowerOff.ogg
