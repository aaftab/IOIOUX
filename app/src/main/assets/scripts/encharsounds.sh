#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/ioio/sound/WirelessChargingStarted.ogg /system/media/audio/ui/WirelessChargingStarted.ogg
cp -p -a -R  /system/ioio/sound/Charger_Connection.ogg /system/media/audio/ui/Charger_Connection.ogg

sleep 3

reboot