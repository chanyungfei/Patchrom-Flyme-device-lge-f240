#!/system/bin/sh

power_log_prop=`getprop persist.service.power.enable`

touch /data/logger/power.log
chmod 0644 /data/logger/power.log

case "$power_log_prop" in
    6)
        /system/bin/power_logger -f /data/logger/power.log -n 99 -r 8192 -t 300
    ;;
    5)
        /system/bin/power_logger -f /data/logger/power.log -n 49 -r 8192 -t 300
    ;;
    4)
        /system/bin/power_logger -f /data/logger/power.log -n 19 -r 8192 -t 300
    ;;
    3)
        /system/bin/power_logger -f /data/logger/power.log -n 9 -r 8192 -t 300
    ;;
    2)
        /system/bin/power_logger -f /data/logger/power.log -n 4 -r 1024 -t 300
    ;;
    1)
        /system/bin/power_logger -f /data/logger/power.log -n 4 -r 8192 -t 300
    ;;
esac
