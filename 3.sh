#!bin/bash

apt install lighttpd -y
apt install mariadb-server -y
echo ""
echo "Next is Mariadb config: n til 'Remove anonymous users?' then Y"
mysql_secure_installation
mariadb -e"CREATE DATABASE wordpress;GRANT ALL ON wordpress.* TO 'stelie'@'localhost' IDENTIFIED BY 'AdventureTimes42$' WITH GRANT OPTION;FLUSH PRIVILEGES"
apt install php php-cgi php-mysql php-common -y
apt install wget -y
wget http://wordpress.org/latest.tar.gz -P /var/www/html
tar -xzvf /var/www/html/latest.tar.gz -C /var/www/html
rm /var/www/html/latest.tar.gz
cp -r /var/www/html/wordpress/* /var/www/html
rm -rf /var/www/html/wordpress
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
