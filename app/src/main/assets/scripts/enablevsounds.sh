#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/ioio/sound/TW_Volume_control.ogg /system/media/audio/ui/TW_Volume_control.ogg

sleep 3

reboot