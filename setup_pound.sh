#!/usr/bin/env bash

sudo -s
apt update
apt -y install htop nano pound

echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart

cp -f /vagrant/pound /etc/default
cp -f /vagrant/pound.cfg /etc/pound
/etc/init.d/pound restart