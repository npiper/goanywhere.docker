#!/bin/bash

yum -y install java-1.8.0-openjdk-devel
yum install -y nmap

mkdir -p /etc/fonts
cp /vagrant/local.conf /etc/fonts/local.conf 

cp /vagrant/ga5_5_8_linux_x64.sh /home/vagrant/ga5_5_8_linux_x64.sh
chmod 775 /home/vagrant/ga5_5_8_linux_x64.sh

printf 'o\n\n\n\n\n1\n/home/vagrant/Linoma_Software/\n8000\n8001\n1443\n2221\n1990\n2222\n8010\n8009\n8005\n' | /home/vagrant/ga5_5_8_linux_x64.sh -c

cp /vagrant/goanywhere.service /usr/lib/systemd/system/goanywhere.service

systemctl daemon-reload

systemctl start goanywhere
