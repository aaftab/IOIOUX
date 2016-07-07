#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

rm -rf /system/priv-app/CocktailBarService*
rm -rf /system/priv-app/PeopleStrip*

sleep 3

reboot

