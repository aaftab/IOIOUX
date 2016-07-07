#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

mv /system/app/CatchFavorites_L/CatchFavorites_L.apk /system/app/CatchFavorites_L/CatchFavorites_L.apk.ioio
cp /system/app/CatchFavorites_L/CatchFavorites_L.apk.ioio /system/ioio/CatchFavorites_L.apk.ioio
rm -rf /system/app/CatchFavorites_L/CatchFavorites_L.apk.ioio

mv /system/priv-app/CocktailBarService/CocktailBarService.apk /system/priv-app/CocktailBarService/CocktailBarService.apk.ioio
cp /system/priv-app/CocktailBarService/CocktailBarService.apk.ioio /system/ioio/CocktailBarService.apk.ioio
rm -rf /system/priv-app/CocktailBarService/CocktailBarService.apk.ioio

mv /system/priv-app/EdgeService/EdgeService.apk /system/priv-app/EdgeService/EdgeService.apk.ioio
cp /system/priv-app/EdgeService/EdgeService.apk.ioio /system/ioio/EdgeService.apk.ioio
rm -rf /system/priv-app/EdgeService/EdgeService.apk.ioio

mv /system/priv-app/PeopleStripe/PeopleStripe.apk /system/priv-app/PeopleStripe/PeopleStripe.apk.ioio
cp /system/priv-app/PeopleStripe/PeopleStripe.apk.ioio /system/ioio/PeopleStripe.apk.ioio
rm -rf /system/priv-app/PeopleStripe/PeopleStripe.apk.ioio
busybox killall system_server