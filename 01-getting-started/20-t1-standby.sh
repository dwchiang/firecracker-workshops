#!/bin/bash

# make sure Firecracker can create its API socket:
#
rm -f /tmp/firecracker.socket

# then, start Firecracker:
#
./firecracker --api-sock /tmp/firecracker.socket

