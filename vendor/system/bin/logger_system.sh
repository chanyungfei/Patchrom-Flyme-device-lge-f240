#!/system/bin/sh

system_log_prop=`getprop persist.service.system.enable`

touch /data/logger/system.log
chmod 0644 /data/logger/system.log

case "$system_log_prop" in
    6)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 99 -r8192
	;;
	5)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 49 -r8192
	;;
	4)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 19 -r8192
	;;
	3)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 9 -r8192
	;;
	2)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 4 -r1024
	;;
	1)
        /system/bin/logcat -v threadtime -b system -b crash -f /data/logger/system.log -n 4 -r8192
	;;
esac
