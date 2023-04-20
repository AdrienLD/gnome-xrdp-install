#!/bin/bash
sudo apt-get update
sudo apt-get install -y xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
sudo apt-get install -y xrdp
sudo adduser xrdp ssl-cert
sudo sed -i.bak '/fi/a #xrdp multiple users configuration\nxfce-session\n' /etc/xrdp/startwm.sh
sudo systemctl enable xrdp
sudo systemctl restart xrdp
sudo ufw allow 3389/tcp
