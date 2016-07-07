#!/system/bin/sh

busybox mount -o rw,remount /system
busybox mount -o rw,remount /system /system
busybox mount -o rw,remount /
busybox mount -o rw,remount / /

cp /system/ioio/CatchFavorites_L.apk.ioio /system/app/CatchFavorites_L/CatchFavorites_L.apk.ioio
mv /system/app/CatchFavorites_L/CatchFavorites_L.apk.ioio /system/app/CatchFavorites_L/CatchFavorites_L.apk
rm -rf /system/ioio/CatchFavorites_L.apk.ioio

cp /system/ioio/CocktailBarService.apk.ioio /system/priv-app/CocktailBarService/CocktailBarService.apk.ioio
mv /system/priv-app/CocktailBarService/CocktailBarService.apk.ioio /system/priv-app/CocktailBarService/CocktailBarService.apk
rm -rf /system/ioio/CocktailBarService.apk.ioio

cp /system/ioio/EdgeService.apk.ioio /system/priv-app/EdgeService/EdgeService.apk.ioio
mv /system/priv-app/EdgeService/EdgeService.apk.ioio /system/priv-app/EdgeService/EdgeService.apk
rm -rf /system/ioio/EdgeService.apk.ioio

cp /system/ioio/PeopleStripe.apk.ioio /system/priv-app/PeopleStripe/PeopleStripe.apk.ioio
mv /system/priv-app/PeopleStripe/PeopleStripe.apk.ioio /system/priv-app/PeopleStripe/PeopleStripe.apk
rm -rf /system/ioio/PeopleStripe.apk.ioio

chmod 644 /system/app/CatchFavorites_L/CatchFavorites_L.apk
chmod 644 /system/priv-app/CocktailBarService/CocktailBarService.apk
chmod 644 /system/priv-app/EdgeService/EdgeService.apk
chmod 644 /system/priv-app/PeopleStripe/PeopleStripe.apk
busybox killall system_server