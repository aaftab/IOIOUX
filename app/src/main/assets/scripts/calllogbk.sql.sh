#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /data

mkdir -p /sdcard/backups/calllog

cp -rf /data/data/com.sec.android.provider.logsprovider/databases /sdcard/backups/calllog
