# taken from https://github.com/jakobadam/packer-qemu-templates

PACKAGES="
bzip2
curl
sudo
unzip
"
aptitude -y install --without-recommends $PACKAGES
