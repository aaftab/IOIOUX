#!/system/bin/sh

export PATH=/system/bin:$PATH

mount -o rw,remount /system

rm -rf   /system/media/audio/ui/WirelessChargingStarted.ogg
rm -rf  /system/media/audio/ui/Charger_Connection.ogg

sleep 3

reboot
