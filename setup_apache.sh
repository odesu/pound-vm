#!/usr/bin/env bash

sudo -s
apt update
apt -y install htop nano apache2
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart
rm -Rf /var/www/html
mkdir -p /var/www/html
/etc/init.d/apache2 restart