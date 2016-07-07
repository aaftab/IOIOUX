#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

cp /system/ioio/s5toolbox.apk.ioio /system/app/s5toolbox/s5toolbox.apk.ioio
mv /system/app/s5toolbox/s5toolbox.apk.ioio /system/app/s5toolbox/s5toolbox.apk
rm -rf /system/ioio/s5toolbox.apk.ioio
sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='1' where name='toolbox_onoff'";
chmod 644 /system/app/s5toolbox/s5toolbox.apk
busybox killall system_server