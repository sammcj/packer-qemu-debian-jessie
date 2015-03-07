#!/bin/bash -eux
# From https://github.com/box-cutter/debian-vm/blob/master/script/cleanup.sh
# Then from https://github.com/jakobadam/packer-qemu-templates

CLEANUP_PAUSE=${CLEANUP_PAUSE:-0}
echo "==> Pausing for ${CLEANUP_PAUSE} seconds..."
sleep ${CLEANUP_PAUSE}

# Make sure Udev doesn't block our network
# http://6.ptmc.org/?p=164
echo "cleaning up udev rules"
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

echo "==> Cleaning up leftover dhcp leases"
if [ -d "/var/lib/dhcp" ]; then
    rm /var/lib/dhcp/*
fi

echo "==> Cleaning up tmp"
rm -rf /tmp/*

# Cleanup apt cache
apt-get -y autoremove --purge
apt-get -y clean
apt-get -y autoclean

echo "==> Installed packages"
dpkg --get-selections | grep -v deinstall

# Remove foreign language man files
rm -rf /usr/share/man/??
rm -rf /usr/share/man/??_*

# Remove Bash history
unset HISTFILE
rm -f /root/.bash_history

# Clean up log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

