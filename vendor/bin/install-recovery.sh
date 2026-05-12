#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:50331648:ae91221d831a2826e58f260948008115122736db; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:50331648:ae91221d831a2826e58f260948008115122736db && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
