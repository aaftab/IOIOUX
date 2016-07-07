#!/system/bin/sh

#add extra toggles on boot
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
	then
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;MobileData;Location;SilentMode;AutoRotate;Bluetooth;Ebook;DormantMode;PowerSaving;UltraPowerSaving;MultiWindow;AllShareCast;SBeam;Nfc;AirView;AirGesture;DrivingMode;CarMode;SmartStay;SmartPause;SmartScroll;VoWiFi;ToddlerMode;Flashlight;AirplaneMode;Brightness;SideKey;SmartNetwork;NetworkBooster;TouchSensitivity;PersonalMode;Sync;DoNotDisturb;WiFiHotspot;TorchLight;QuickConnect;SFinder;Toolbox;CS;Camera;Battery;PowerOff;GlassMsg;Reboot;Recovery;' where name='notification_panel_active_app_list'";
fi

if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
	then
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;MobileData;Location;SilentMode;AutoRotate;Bluetooth;Ebook;DormantMode;PowerSaving;UltraPowerSaving;MultiWindow;AllShareCast;SBeam;Nfc;AirView;AirGesture;DrivingMode;CarMode;SmartStay;SmartPause;SmartScroll;VoWiFi;ToddlerMode;Flashlight;AirplaneMode;Brightness;SideKey;SmartNetwork;NetworkBooster;TouchSensitivity;PersonalMode;Sync;DoNotDisturb;WiFiHotspot;TorchLight;QuickConnect;SFinder;Toolbox;CS;Camera;Battery;PowerOff;GlassMsg;Reboot;Recovery;' where name='notification_panel_active_app_list_for_reset'";
fi

if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
	then
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;MobileData;Location;SilentMode;AutoRotate;Bluetooth;Ebook;DormantMode;PowerSaving;UltraPowerSaving;MultiWindow;AllShareCast;SBeam;Nfc;AirView;AirGesture;DrivingMode;CarMode;SmartStay;SmartPause;SmartScroll;VoWiFi;ToddlerMode;Flashlight;AirplaneMode;Brightness;SideKey;SmartNetwork;NetworkBooster;TouchSensitivity;PersonalMode;Sync;DoNotDisturb;WiFiHotspot;TorchLight;QuickConnect;SFinder;Toolbox;CS;Camera;Battery;PowerOff;GlassMsg;Reboot;Recovery;' where name='notification_panel_default_active_app_list'";
fi
pkill -TERM -f com.android.systemui
