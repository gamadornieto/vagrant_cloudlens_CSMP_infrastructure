#!/usr/bin/env bash

sudo apt install openssh-server -y
sudo apt-get install sshpass -y

# Need to install Python2 in system. Otherwise CloudlensManager script fails
apt-get install python -y

# Enable SSH manual
mv /etc/ssh/sshd_config /etc/ssh/sshd_config.orig
sed -e 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.orig > /etc/ssh/sshd_config
service sshd restart

echo "Done"
