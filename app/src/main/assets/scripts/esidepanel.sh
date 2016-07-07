#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

cp /system/ioio/EasySidePanel.apk.ioio /system/app/EasySidePanel/EasySidePanel.apk.ioio
mv /system/app/EasySidePanel/EasySidePanel.apk.ioio /system/app/EasySidePanel/EasySidePanel.apk
rm -rf /system/ioio/EasySidePanel.apk.ioio
sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='1' where name='sidesoftkey_switch'";
chmod 644 /system/app/EasySidePanel/EasySidePanel.apk
busybox killall system_server