#!/bin/sh
# vim: ts=4 sts=4 sw=4 expandtab

download_utils() {
    wget -O /bin/get-raid-n http://www.stacken.kth.se/~nsg/preseed/scripts/get-raid-n
    wget -O /bin/get-small-disks http://www.stacken.kth.se/~nsg/preseed/scripts/get-small-disks
    chmod +x /bin/get-raid-n /bin/get-small-disks
}

download_utils

# Clean up LVM and MD
__set d-i partman-md/device_remove_md boolean true
for disk in /dev/[sv]d?; do
    dd if=/dev/zero of=$disk bs=512 count=1
done
