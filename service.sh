#!/system/bin/sh
MODDIR=${0%/*}

# Wait for boot completion
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# Create a test file to verify module is working
touch /sdcard/touch_fix_installed.txt
echo "Module installed and running" > /sdcard/touch_fix_installed.txt