# Update the box
apt-get update
# apt-get upgrade -y # shouldn't be required as Debian performs an upgrade during install
apt-get autoremove -y
apt-get clean
