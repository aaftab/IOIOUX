#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/app/EasySidePanel/EasySidePanel.apk /system/app/EasySidePanel/EasySidePanel.apk.ioio
cp /system/app/EasySidePanel/EasySidePanel.apk.ioio /system/ioio/EasySidePanel.apk.ioio
rm -rf /system/app/EasySidePanel/EasySidePanel.apk.ioio
sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='0' where name='sidesoftkey_switch'";
busybox killall system_server