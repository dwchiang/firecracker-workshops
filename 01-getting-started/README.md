# Workshop 01: Getting Started with Firecracker

Source: https://github.com/firecracker-microvm/firecracker/blob/master/docs/getting-started.md

The script in this workshop is tested with Ubuntu 18.04. Please feel free to modify for any Linux distribution.

[![Getting Started with Firecracker in 90 Seconds](http://img.youtube.com/vi/kw4LlAmTjyg/0.jpg)](http://www.youtube.com/watch?v=kw4LlAmTjyg "Getting Started with Firecracker in 90 Seconds")

## Requirements

It may vary by time.

- Hardware: x86_64 or aarch64 (alpha stage).
- OS: Any Linux 4.14+ with KVM enabled.

### Enable Nested Virtualization in VirtualBox on Mac

```
VBoxManage modifyvm "your-VM-Name" --nested-hw-virt on
```

## Preparations

- Open 2 terminals.
    - `export AWS_DEFAULT_PROFILE=your_aws_cli_profile_here`

## 10: Getting the Firecracker Binary

## 20: Standby on Terminal Window 1

## 30: Getting the kernel and rootfs then run Firecracker on Terminal Window 2