#!/bin/bash

sudo apt-get install apache2 -y
sudo systemctl start apache2.service
sudo systemctl enable apache2.service


sudo apt-get install mariadb-server mariadb-client -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation

sudo apt-get install -y php libapache2-mod-php php-mysql

echo "mysql_root_password:"
read pwdroot
echo "db_name: "
read db_name
echo "password: "
read password

sudo mysql -u root -p$pwdroot

mysql -e "CREATE DATABASE $db_name"

#Create user
mysql -e "CREATE USER $db_name@localhost IDENTIFIED BY '$password';"
#User privileges
mysql -e "GRAN ALL PRIVILEGES ON $db_name.* TO $db_name@localhost;"

mysql -e "FLUSH PRIVILEGES;"
mysql -e "exit;"
