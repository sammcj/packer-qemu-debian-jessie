#!/bin/bash

# Enable logging
export PACKER_LOG="yes"
export PACKER_LOG_PATH="build_output.log"

packer build jessie.json

# Cleanup
echo "Size before reclaiming free space:"
du -sh output-jessie/packer-jessie.qcow2
echo "Reclaiming free space..."
time qemu-img convert -c -O qcow2 output-jessie/packer-jessie.qcow2 output-jessie/packer-jessie-shrunk.qcow2
echo "Size after reclaiming free space:"
du -sh output-jessie/packer-jessie-shrunk.qcow2
rm -f output-jessie/packer-jessie.qcow2

