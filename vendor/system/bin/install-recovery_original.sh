#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9363456 db53b06ddfc58122cea00cd0e830f7ab5b899d65 6920192 8e79346ad0411ce78acb94db58f8e44bd6bb232b
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9363456:db53b06ddfc58122cea00cd0e830f7ab5b899d65; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6920192:8e79346ad0411ce78acb94db58f8e44bd6bb232b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery db53b06ddfc58122cea00cd0e830f7ab5b899d65 9363456 8e79346ad0411ce78acb94db58f8e44bd6bb232b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
