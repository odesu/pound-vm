#!/usr/bin/env bash

sudo -s
apt update
apt -y install htop nano
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart