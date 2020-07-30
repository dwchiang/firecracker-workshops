#!/bin/bash

# Firecracker uses KVM and needs read/write access
#
sudo setfacl -m u:${USER}:rw /dev/kvm

# Install required packages
#
sudo apt install -y wget

# Getting the Firecracker Binary
#
latest=$(basename $(curl -fsSLI -o /dev/null -w  %{url_effective} https://github.com/firecracker-microvm/firecracker/releases/latest))
curl -LOJ https://github.com/firecracker-microvm/firecracker/releases/download/${latest}/firecracker-${latest}-$(uname -m)

mv firecracker-${latest}-$(uname -m) firecracker
chmod +x firecracker

# print virtualization info
lscpu | grep Virtualization

lsmod | grep kvm

uname -r
