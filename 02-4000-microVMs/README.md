# Workshop 02: 4000 microVMs

Source: https://github.com/firecracker-microvm/firecracker-demo

## Preparation

- Using [aws-spot-one CDK script](https://github.com/dwchiang/aws-spot-one) to create one EC2 bare metal (i3.metal) spot instance with Amazon Linux 2 as host OS.
    - `git clone https://github.com/dwchiang/aws-spot-one.git`
    - Follow the `Requirements` and `Preparations` sections of [aws-spot-one](https://github.com/dwchiang/aws-spot-one).
    - `make clean`
    - `make bootstrap`
    - `make synth`
    - `make diff`
    - `make deploy`
- We will have two terminal windows, but please just have the first one for now.
    - `export AWS_DEFAULT_PROFILE=your_aws_cli_profile_here` on both terminals.
    - `./ec2-connect.sh {your_instance_id_here}` to the instance on both terminals.
- Git clone this workshop scripts on the bare metal instance.
    - `sudo yum install -y git`
    - `git clone https://github.com/dwchiang/firecracker-workshops.git`
    - `cd firecracker-workshops/02-4000-microVMs`

## 10: Init on Terminal Window 1

- install required packages
- git clone `Firecracker-demo`
- Raise the maximum processes limit --> this will require reload the ssh session to have the new limit applied which is the Terminal Window 2 later on.

```
sudo ./10-init.sh
```

## 20: Standby on Terminal Window 1

```
./20-t1-standby.sh
```

## 30: Setup and plant 4000 microVMs on Terminal Window 2

Now you can SSH connect to the Terminal Window 2.

```
sudo ./30-t2-sudo-setup.sh
```

## 40: Pick a microVM on Terminal Window 2

```
./40-t2-pick-a-vm.sh
```

## Plot the 4000 Firecracker microVMs boot times

Back to the `aws-spot-one` folder on your local machine.

```
./ec2-scp-firecracker-4kdemo.sh {your_instance_id_here}
```