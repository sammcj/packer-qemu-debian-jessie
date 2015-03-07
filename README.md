## Packer qemu template for Debian 8 (Jessie)
Creates Debian 8 RC1 qcow2 image using QEMU and KVM

### Default Configuration
* 4 Cores
* 1024MB RAM
* 10GB Disk
* Australia/Melbourne locale
* Defaults to EXT4 on a single logical volume
* Apt Mirror defaults to Internode Australia
* User: `packer`
* Password: `packer` (Don't forget to change this!)
* Root Password: `toor` (Don't forget to change this!)

Defaults can be changed in `http/preseed.cfg` and `jessie.json`

#### Build
* 7 Minutes from scratch on a i5-3550, 4GB RAM, USB3 Intel 320 SSD (See #5)
* 704Mb (After reclaiming free space see #3)
* [Build Output](build_output.log)

## Usage
1. Edit anything you want to change in `http/preseed.cfg` and `jessie.json`
2. Build:
```
packer build jessie.json
```
Optional: enable build logging:
```
export PACKER_LOG="yes" && packer build jessie.json
```

## TODO / BUGS
* See [issues](https://github.com/sammcj/packer-qemu-debian-jessie/issues)

## Further Reading

* https://www.debian.org/releases/jessie/example-preseed.txt
* https://www.packer.io/docs/builders/qemu.html
* https://www.packer.io/docs/provisioners/ansible-local.html

This project: https://github.com/sammcj/packer-qemu-debian-jessie
