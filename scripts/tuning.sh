#!/bin/bash -x

# Set deadline IO scheduler for non-rotating disks
echo '"ACTION=="add|change", KERNEL=="sd[a-z]", ATTR{queue/rotational}=="0", ATTR{queue/scheduler}="deadline"' >> /etc/udev/rules.d/60-schedulers.rules

# Enable ZRAM
mv /home/packer/zramst* /usr/local/bin/
mv zram.service /etc/system/zram.service
systemctl enable zram && systemctl start zram
