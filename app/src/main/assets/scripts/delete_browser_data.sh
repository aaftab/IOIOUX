#!/system/bin/sh

# mount -o rw,remount /data

pkill com.sec.android.app.SBrowser_4_LATEST

rm -rf "/data/data/com.sec.android.app.SBrowser_4_LATEST/cache/"
rm -rf "/data/data/com.sec.android.app.SBrowser_4_LATEST/databases/"
rm -rf "/data/data/com.sec.android.app.SBrowser_4_LATEST/files/"
rm -rf "/data/data/com.sec.android.app.SBrowser_4_LATEST/shared_prefs/"
rm -rf "/data/data/com.sec.android.app.SBrowser_4_LATEST/app_SBrowser_4_LATEST/"
