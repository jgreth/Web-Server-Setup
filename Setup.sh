#!/bin/bash
# ------------------------------------------------------------------
# [Damian] Ubuntu 16.04 Web Server Setup
#          Simple Web Server Setup Script
# ------------------------------------------------------------------

if [ "$(uname)" == "Ubuntu" ]; then
sudo apt-get update
sudo apt-get install apache2 -y
systemctl enable apache2
sudo apt-get install mysql-server -y
mysql_secure_installation
systemctl enable mysql
apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
systemctl restart apache2
apt-get install phpmyadmin -y
echo "Include /etc/phpmyadmin/apache.conf" >> etc/apache2/apache2.conf
systemctl restart apache2
else
echo This script does not work on your version of Linux
fi
