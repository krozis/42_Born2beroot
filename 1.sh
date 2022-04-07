#!bin/bash

#SSH part
apt install openssh-server -y
S1="#   Port 22"
S2="#Port 22"
S3="#PermitRootLogin prohibit-password"
R1="Port 4242"
R3="PermitRootLogin no"
FILE1="/etc/ssh/ssh_config"
FILE2="/etc/ssh/sshd_config"
sed -i "s/$S1/$R1/" $FILE1
sed -i "s/$S2/$R1/" $FILE2
sed -i "s/$S3/$R3/" $FILE2
service ssh restart
service sshd restart

#Uncomplicated FireWall part
apt install ufw -y
ufw enable
ufw allow 4242
ufw allow 80
ufw allow 9090
ufw reload
systemctl enable ufw
systemctl restart ufw

#Configure sudo
mkdir /var/log/sudo
cp sudo_pwd/sudoconfig /etc/sudoers.d/

#Password Policy
S="PASS_MAX_DAYS	99999"
R="PASS_MAX_DAYS	30"
FILE="/etc/login.defs"
sed -i "s/$S/$R/" $FILE
S="PASS_MIN_DAYS	0"
R="PASS_MIN_DAYS	3"
sed -i "s/$S/$R/" $FILE
apt install libpam-pwquality -y
cp sudo_pwd/common-password /etc/pam.d/

