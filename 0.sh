#!bin/bash

apt remove git -y
apt update -y
apt install sudo -y
sudo groupadd user42
sudo adduser stelie user42
sudo adduser stelie sudo
sudo reboot

