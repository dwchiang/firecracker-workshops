#!/bin/bash

# install required packages
#
sudo yum install -y python3 git iperf3

# git clone firecracker-demo repo
#
git clone https://github.com/firecracker-microvm/firecracker-demo.git

# print virtualization info
lscpu | grep Virtualization

lsmod | grep kvm

uname -r

