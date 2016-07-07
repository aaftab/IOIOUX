#!/system/bin/sh

export PATH=/system/bin:$PATH

mount -o rw,remount /system

rm -rf  /system/media/audio/ui/camera_click.ogg


sleep 3

reboot