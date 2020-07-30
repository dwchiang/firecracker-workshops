#!/bin/bash

cd firecracker-demo

ID="42"
# get the IP for that microVM
ifconfig fc-$ID-tap0 | grep "inet "

echo '======================================================='
echo 'Based on the inet result, please make the IP *one less*'
echo '======================================================='
echo ' $ ssh -i xenial.rootfs.id_rsa root@your_ip_one_less'
echo '======================================================='
echo
echo 'Once you get into a VM:'
echo
echo ' # rc-service demo-workload stop'
echo ' # iperf3 -c $(./gateway-ip.sh) -b 104857600'
echo

ssh -i xenial.rootfs.id_rsa root@169.254.0.169
