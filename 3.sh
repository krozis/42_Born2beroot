#!bin/bash

DBNAME="wordpress"
UNAME="stelie"
PWD="AdventureTimes42$"
FILE="/var/www/html/wp-config.php"

apt install lighttpd -y
apt install mariadb-server -y
echo ""
echo "Next is Mariadb config: n til 'Remove anonymous users?' then Y"
mysql_secure_installation
mariadb -e"CREATE DATABASE $DBNAME;GRANT ALL ON $DBNAME.* TO '$UNAME'@'localhost' IDENTIFIED BY '$PWD' WITH GRANT OPTION;FLUSH PRIVILEGES"
apt install php php-cgi php-mysql php-common -y
apt install wget -y
wget http://wordpress.org/latest.tar.gz -P /var/www/html
tar -xzvf /var/www/html/latest.tar.gz -C /var/www/html
rm /var/www/html/latest.tar.gz
cp -r /var/www/html/wordpress/* /var/www/html
rm -rf /var/www/html/wordpress
cp /var/www/html/wp-config-sample.php $FILE
sed -i "s/database_name_here/$DBNAME/" $FILE
sed -i "s/username_here/$UNAME/" $FILE
sed -i "s/password_here/$PWD/" $FILE
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo lighty-enable-mod fastcgi
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload
cp bonus/php.php /var/www/html/
apt install cockpit -y
