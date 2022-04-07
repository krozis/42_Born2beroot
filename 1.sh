
#SSH part
apt install openssh-server -y
$S="#Port 22"
$R="Port 4242"
$FILE="/etc/ssh/sshd_config"
$FILE2="/etc/ssh/ssh_config"
sed -i "s/$S/$R/" $FILE
sed -i "s/$S/$R/" $FILE2
$S="#PermitRootLogin prohibit-password"
$R="PermitRootLogin no"
sed -i "s/$S/$R/" $FILE
service ssh restart

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
#mkdir /var/log/sudo
#cp sudo_pwd/sudoconfig /etc/sudoers.d/

#Password Policy
#$S="PASS_MAX_DAYS	99999"
#$R="PASS_MAX_DAYS	30"
#$FILE="/etc/login.defs"
#sed -i "s/$S/$R/" $FILE
#$S="PASS_MIN_DAYS	0"
#$R="PASS_MIN_DAYS	3"
#sed -i "s/$S/$R/" $FILE
#apt install libpam-pwquality -y
#cp sudo_pwd/common-password /etc/pam.d/

