#!/bin/bash
wordpress_path="/var/www/html"
grep -Eq "^open_basedir = " /etc/php/7.4/fpm/php.ini || echo "open_basedir = $wordpress_path" | tee -a /etc/php/7.4/fpm/php.ini

chmod 0700 /etc/monit/monitrc
chown -R www-data:www-data $wordpress_path
chmod -R 755 $wordpress_path


/usr/bin/monit -c /etc/monit/monitrc -I
