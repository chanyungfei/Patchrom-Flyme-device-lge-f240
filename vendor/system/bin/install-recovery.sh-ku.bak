#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10762240:01c66c1f00f96984fb66610d495485c476b7b3b8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11155456:5b3082b86c71fac988a63d6b0815bf00cec0a4e6 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 01c66c1f00f96984fb66610d495485c476b7b3b8 10762240 5b3082b86c71fac988a63d6b0815bf00cec0a4e6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
