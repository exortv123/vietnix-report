#!/bin/bash

cd /var/www/html/
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz

sudo chown -R www-data:www-data /var/www/html
sudo find /var/www/html/wordpress/ -type d -exec chmod 750 {} \;
sudo find /var/www/html/wordpress/ -type f -exec chmod 640 {} \;

sudo service apache2 reload
