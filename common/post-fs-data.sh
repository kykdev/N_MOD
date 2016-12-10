#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

if [ -f /data/magisk/resetprop ]; then
	/data/magisk/resetprop ro.boot.warranty_bit 0
	/data/magisk/resetprop ro.warranty_bit 0
fi
