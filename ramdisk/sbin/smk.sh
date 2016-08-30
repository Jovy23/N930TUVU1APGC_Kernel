#!/system/bin/sh

mount -o remount,rw /system

#Auto-Kills security/software checking related apps
rm -rf /system/app/SecurityLogAgent
rm -rf /system/priv-app/AdaptClient
rm -rf /system/priv-app/DiagMonAgent
rm -rf /system/priv-app/FotaClient
rm -rf /system/priv-app/FotaAgent
rm -rf /system/priv-app/FWUpdateService
rm -rf /data/data/com.samsung.android.securitylogagent
rm -rf /system/etc/secure_storage/com.samsung.android.securitylogagent
rm -rf /system/etc/secure_storage/com.samsung.android.securitylogagent!dex

#
# Init.d Support
#
if [ ! -d /system/etc/init.d ]; then
   mkdir -p /system/etc/init.d/
   chmod 777 /system/etc/init.d
   chmod 777 /system/etc/init.d/;
   chmod 777 /system/etc/init.d/*;
fi
run-parts /system/etc/init.d

