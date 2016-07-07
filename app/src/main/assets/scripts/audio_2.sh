echo ""
echo ""
echo "audio levels 2"
/system/xbin/busybox mount -o remount,rw /system
/system/xbin/busybox cp /system/script/mixer_gains_2.xml /system/etc/mixer_gains.xml
/system/xbin/busybox chmod 644 /system/etc/mixer_gains.xml
/system/xbin/busybox mount -o remount,ro /system
echo "Reboot your device"
echo "to apply changes"

sleep 3

reboot
