# HPC-zram-systemd

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
This because the default kernel doesn't support compression streams (/sys/block/zram0/max_comp_streams).

### Installing

Use install.sh to install.

### Tuning Options

I configured the tuning options to variables in the script.
Modify them to suite your needs.
I have them configured best for HPC workloads

## See also

[Systemd ZRAM-Generator](https://github.com/systemd/zram-generator)

[Chapter 7. Memory](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/performance_tuning_guide/chap-red_hat_enterprise_linux-performance_tuning_guide-memory)

[7.5. Configuring System Memory Capacity](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/performance_tuning_guide/sect-red_hat_enterprise_linux-performance_tuning_guide-configuration_tools-configuring_system_memory_capacity)

[Linux kernel tuning for GlusterFS](https://docs.gluster.org/en/main/Administrator-Guide/Linux-Kernel-Tuning/)
