#!/bin/bash

cp zram zram.service /etc/systemd/system/
chmod +x /etc/systemd/system/zram
systemctl daemon-reload
systemctl enable --now zram.service
