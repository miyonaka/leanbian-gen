#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"

if [ -n "$WPA_COUNTRY" ]; then
    install -m 644 files/wireless.enable.config.txt "${ROOTFS_DIR}/boot/config.txt"
else
    install -m 644 files/wireless.disable.config.txt "${ROOTFS_DIR}/boot/config.txt"
fi
