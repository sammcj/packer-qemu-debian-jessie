# taken from https://github.com/jakobadam/packer-qemu-templates

#PACKAGES="
#bzip2
#curl
#unzip
#openntpd
#"
#apt-get install -y --no-install-recommends $PACKAGES

UNINSTALL_PKGS="
nano
cupsys*
ntp
aspell*
bind9-host
fdutils
hplip
mutt
ppp
pppoe
pppoeconf
pppoeconf
iamerican
ibritish
ispell
tcsh
w3m
smbclient
foomatic-filters
"
apt-get purge -y $UNINSTALL_PKGS
