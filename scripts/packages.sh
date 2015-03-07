# taken from https://github.com/jakobadam/packer-qemu-templates

PACKAGES="
bzip2
curl
unzip
"
apt-get install -y --no-install-recommends $PACKAGES

UNINSTALL_PKGS="
nano
cupsys*
aspell*
bind9-host
fdutils
hplip
mutt
ppp
pppoe
pppoeconf
pppoeconf
tcsh
w3m
smbclient
foomatic-filters
"
apt-get purge -y $UNINSTALL_PKGS
