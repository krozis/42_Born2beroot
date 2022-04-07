#!bin/bash

apt install lighttpd
apt install mariadb-server
echo ""
echo "Next is Mariadb config: n til 'Remove anonymous users?' then Y"
mysql_secure_installation
