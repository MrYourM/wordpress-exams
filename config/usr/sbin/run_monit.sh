#!/bin/bash
wordpress_path="/var/www/html/wordpress"
mkdir -p $wordpress_path
grep -Eq "^open_basedir = " /etc/php/7.4/fpm/php.ini || echo "open_basedir = $wordpress_path" | tee -a /etc/php/7.4/fpm/php.ini

chown -R www-data:www-data $wordpress_path
chmod -R 755 $wordpress_path

/usr/bin/monit -c /etc/monit/monitrc -I
