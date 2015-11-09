#!/system/bin/sh

kernel_log_prop=`getprop persist.service.kernel.enable`
vold_decrypt=`getprop vold.decrypt`
crypto_state=`getprop ro.crypto.state`

touch /data/logger/kernel.log
chmod 0644 /data/logger/kernel.log

if [ "$vold_decrypt" = "trigger_restart_framework" ] || [ "$crypto_state" != "encrypted" ] ; then
case "$kernel_log_prop" in
	6)
	/system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 100
	;;
	5)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 50
	;;
	4)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 20
	;;
	3)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 10
	;;
	2)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 1048576 -m 5
	;;
	1)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 5
	;;
esac
fi
