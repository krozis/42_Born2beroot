#!bin/bash

apt install lighttpd -y
apt install mariadb-server -y
echo ""
echo "Next is Mariadb config: n til 'Remove anonymous users?' then Y"
mysql_secure_installation
