#!/system/bin/sh

# Uninstall script for non-Magisk users

MODDIR=${0%/*}

# Remove module files
rm -rf "$MODDIR"

# Remove module prop
rm -f /data/adb/modules/touch_freeze_fix/module.prop

# Remove service
rm -f /data/adb/modules/touch_freeze_fix/service.sh

# Restore original touch configs
if [ -f /data/adb/modules/touch_freeze_fix/system/vendor/etc/touch_config.conf ]; then
  rm -f /system/vendor/etc/touch_config.conf
fi

# Cleanup
rm -rf /data/adb/modules/touch_freeze_fix

echo "Touch Freeze Fix module uninstalled successfully."