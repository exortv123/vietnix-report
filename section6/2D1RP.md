# Progression

Founded 2 :key: to :unlock: 2 :lock:

# Menu

<ol>
    <li> ✅
        <a href='#1'>
            Settings up
        </a>
    </li>
    <li> ✅
        <a href='#2'>
            Test the result
        </a>
    </li>
</ol>

# Main dishes

This one using `Apache` as `web server` and `nginx` as `reverse proxy`
=> Using for multiple site with `nginx` reverse proxy  

<div id='1'></div>

## 1. Settings up

Add listen port `8081` to `/etc/apache2/ports.conf`

![virtualHost_ports](images/virtualHost_ports.png)

Create new site and setup permissions for `virtualHost`

![virtualHost](images/virtualHost.png)

Disable default configuration

![disable-default](images/disable-default.png)

Create the configuration file in `/etc/apache2/sites-enabled/virtualHost.conf`

![virtualHost_conf](images/virtualHost_conf.png)

Enable file to by command `a2ensite <conf_name>` it actually make a link to `/etc/apache2/sites-enabled/`

![newConfig](images/newConfig.png)

Restart apache2 `sudo service apache2 restart`

![virtualHost_restartApache](images/virtualHost_restartApache.png)

Edit `reverse_proxy` in `/etc/nginx/site-available` (linked to `/etc/nginx/site-enabled)

![reverse_proxy](images/reverse_proxy.png)

** Hosts file

Edit `/etc/hosts`

![hosts](images/hosts.png)

<div id='2'></div>

## 2. Test the result

Test virtualhost. It's worked!!!

![virtualhost_test](images/virtualhost_test.png)

Login `wordpress` user account

![wp_dashboard](images/wp_dashboard.png)

Next, let's create a blog and test it.

![wp_firstblog](images/wp_firstblog.png)

Chill~! 

![wp_chill](images/wp_chill.png)

Click on `Publish`, and it send us an address:

![wp_address](images/wp_address.png)