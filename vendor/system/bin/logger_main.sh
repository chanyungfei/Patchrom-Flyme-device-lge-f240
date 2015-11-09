#!/system/bin/sh

main_log_prop=`getprop persist.service.main.enable`

touch /data/logger/main.log
chmod 0644 /data/logger/main.log

case "$main_log_prop" in
	6)
		/system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 99 -r8192
	;;
	5)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 49 -r8192
	;;
	4)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 19 -r8192
	;;
	3)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 9 -r8192
	;;
	2)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r1024
	;;
	1)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r8192
	;;
esac
