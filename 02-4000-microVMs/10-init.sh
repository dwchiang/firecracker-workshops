#!/bin/bash

# install required packages
#
sudo yum install -y python3 git iperf3

# Raise the maximum processes limit.
#
sudo tee -a >> /etc/security/limits.conf <<EOL
ec2-user soft nproc 16384
ec2-user hard nproc 16384
EOL

sudo cat /etc/security/limits.conf
# Reload the ssh session to have the new limit applied.


# git clone firecracker-demo repo
#
sudo -u ec2-user git clone https://github.com/firecracker-microvm/firecracker-demo.git

# print virtualization info
echo
lscpu | grep Virtualization

echo
lsmod | grep kvm

echo
uname -r

echo

