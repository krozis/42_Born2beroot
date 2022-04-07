#!bin/bash

apt remove git -y
apt update -y
apt install sudo -y
sudo adduser stelie sudo
sudo reboot

