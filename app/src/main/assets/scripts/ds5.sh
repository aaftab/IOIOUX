#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/app/s5toolbox/s5toolbox.apk /system/app/s5toolbox/s5toolbox.apk.ioio
cp /system/app/s5toolbox/s5toolbox.apk.ioio /system/ioio/s5toolbox.apk.ioio
rm -rf /system/app/s5toolbox/s5toolbox.apk.ioio
sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='0' where name='toolbox_onoff'";
busybox killall system_server