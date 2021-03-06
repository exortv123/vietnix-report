# Progression

Founded 2 :key: to :unlock: 2 :lock:

# Menu

<ol>
    <li> ✅
        <a href='#1'>
            LAMP stack
        </a>
    </li>
    <li> ✅
        <a href='#2'>
            LEMP stack
        </a>
    </li>
</ol>

# Main dishes

I using <span style="color: red;"> Debian </span> base for this meal

<div id='1'></div>

## 1. LAMP stack

![lamp](images/lamp.png)

* What is LAMP?

```
LAMP stands for Linux, Apache, MySQL, and PHP.
```

* Why LAMP:

```
Open-source and non-proprietary
Security architecture and well-established encryption
Smooth-performance
```

<h2><b> LAMP stack installing </b></h2>

<h3><b>Apache</b></h3>

Install apache: `sudo apt-get install apache2` 

![iapache](images/iapache.png)

Start service and check status of Apache

![apacheStatus](images/apacheStatus.png)

Apache privilledge setup:

![apachepriv](images/apachepriv.png)

<h3><b>MySQL</b></h3>

Install MySQL: `sudo apt-get install mysql*`

![mysql](images/mysql.png)

Security configuration for MySQL: `mysql_secure_installation` (must be root user)

![secmysql](images/secmysql.png)

After secured

![aftersecmysql](images/aftersecmysql.png)

<h3><b>PHP</b></h3>

Install PHP: `sudo apt-get install php libapache2-mod-php php-mysql`

![iphp](images/iphp.png)

<h3><b>Test LAMP stack</b></h3>

* Test PHP

![testphp](images/testphp.png)

Test in apache web server `localhost/phpinfo.php`

![phpinfo](images/phpinfo.png)

It worked!

<h2><b>Build Wordpress + LAMP: CMS and web server</b></h2> 

* Create database for wordpress management:

```
mysql -uroot -p => enter password

mysql> CREATE DATABASE wp_db;
mysql> GRANT ALL ON wp_db.* TO 'wp_admin'@'localhost' IDENTIFIED BY '<password_here>';
mysql> FLUSH PRIVILLEGES;
```
![createmysqldb](images/createmysqldb.png)

* Installing additional PHP extensions:

```
sudo apt-get install php php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
```

![iphpexten](images/iphpexten.png)

* Installing WordPress on LAMP:

I use the <a href=https://raw.githubusercontent.com/exortv123/vietnix-report/master/script/iLAMP_WP.sh>script</a> (root much more easy to use this script)

![iwordpress](images/iwordpress.png)

Config database in WP (change the owner to www-data)

![configdbWP](images/configdbWP.png)

Change DB_NAME, DB_USER, DB_PASSWORD, DB_HOST(if do not use localhost)

![wp-config](images/wp-config.png)

![wp1](images/wp1.png)

![wp2](images/wp2.png)

After installed, WordPress notifies you that it was installed, and redirects to the login page.

![wplogin](images/wplogin.png)

Done!

![wpdashboard](images/wp_dashboard.png)

<div id='2'></div>

## 2. LEMP stack
* Install library

`sudo apt install php-fpm php-mysql php-curl php-mbstring php-gd php-json php-xml php-xmlrpc php-cgi php-zip php-pear -y`

* Install nginx: `sudo apt-get install nginx`

![nginx](images/nginx.png)

Configuration nginx in `/etc/nginx/sites-available/default`

![nginxIndex](images/nginx_index.png)

Install MySQL and PHP like above and this is give an access to WP in nginx web server

![nginx_wp403](images/nginx_wp403.png)

Copy configuration file `sudo cp /etc/nginx/sites-avaliable/default /etc/nginx/sites-enabled/wordpress`

![cfgnginx](images/confnginx.png)

Make sure that your php-fpm running `sudo service php7.x-fpm restart`

Check info.php

![nginx_phpinfo](images/nginx_phpinfo.png)

Go check `localhost/wordpress`

![nginx_wordpress](images/nginx_wordpress.png)

Go to `wp-login.php` for login and administration

![nginx_wp-login](images/nginx_wp-login.png)