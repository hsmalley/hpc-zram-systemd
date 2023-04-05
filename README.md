# my-zram-systemd

HPC zram Script for systemd on RHEL 7 / CentOS 7

## Getting Started

This script and unit file will get zram swap working on RHEL7/CentOS7 on default minimal install.

### Prerequisites

Red Hat Enterprise Linux 7, CentOS 7 or similar

If you're using Red Hat Enterprise Linux 8, Rocky 8, or similar use the [zram-generator](https://github.com/systemd/zram-generator).

Kernel options vm.overcommit_memory, vm.page-cluster, vm.spwapiness have their defaults below:

```
vm.overcommit_memory=0
vm.page-cluster=3
vm.spwapiness=60
```

Variable FACTOR in zram script set the % of system RAM used for zram swap.

10% is a sane default to start with, tune to for your workloads.

This generates as many zram devices as CPUs.
This because the default kernel doesn't suport compression streams (/sys/block/zram0/max_comp_streams).

### Installing

Use install.sh to install.

### Tunning Options

I configured the tunning options to varibles in the script.
Modify them to suite your needs.
I have them configured best for HPC workloads
