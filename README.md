## Packer qemu template for Debian 8 (Jessie)
Creates a standard Debian 8 RC1 install

### Default Configuration
* 4 Cores
* 1024MB RAM
* 10GB Disk
* Australia/Melbourne locale

#### Partitioning
* Defaults to EXT4 on a single logical volume
* Editable in `http/preseed.cfg` however Debian preseed's partman 'expert' config is painful to say the least
* Grub installs to /dev/vda which is suitable for qemu/KVM but may need to be changed to sda or xvda for others

#### Apt Mirror
* Defaults to Internode Australia
* Editable in `http/preseed.cfg`

## Usage
```
packer build jessie.json
```
With logging:
```
export PACKER_LOG="yes" && packer build jessie.json
```

## TODO / BUGS
* See issues

https://github.com/sammcj/packer-qemu-debian-jessie
