#!/system/bin/sh

#add extra toggles on boot

sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update secure set value='1' where name='qconnectchecked'";
sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update secure set value='1' where name='sfinderchecked'";
pkill -TERM -f com.android.systemui