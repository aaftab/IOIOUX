#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/ioio/sound/camera_click.ogg /system/media/audio/ui/camera_click.ogg


sleep 3

reboot