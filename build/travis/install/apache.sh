#!/bin/sh

# ---------------------------------------------------------------------------- #
#
# Installs the Apache server on Travis-CI
#
# ---------------------------------------------------------------------------- #

# Install necesary php packages.
sudo apt-get install -y --force-yes php5-cgi php5-mysql

# Install Apache.
sudo apt-get install apache2 libapache2-mod-fastcgi
sudo a2enmod rewrite actions fastcgi alias

# Config php-fpm.
sudo cp ~/.phpenv/versions/$(phpenv version-name)/etc/php-fpm.conf.default ~/.phpenv/versions/$(phpenv version-name)/etc/php-fpm.conf
echo "cgi.fix_pathinfo = 1" >> ~/.phpenv/versions/$(phpenv version-name)/etc/php.ini
~/.phpenv/versions/$(phpenv version-name)/sbin/php-fpm

# Set sendmail so php doesn't throw an error while trying to send out email.
echo "sendmail_path='true'" >> `php --ini | grep "Loaded Configuration" | awk '{print $4}'`

# Create the www folder as we need it for the vhost config.
mkdir $TRAVIS_BUILD_DIR/www

# Create the default vhost config file.
sudo cp -f $TRAVIS_BUILD_DIR/build/travis/config/apache.conf /etc/apache2/sites-available/default
sudo sed -e "s?%TRAVIS_BUILD_DIR%?$TRAVIS_BUILD_DIR?g" --in-place /etc/apache2/sites-available/default
sudo service apache2 restart

# Restart Apache
sudo service apache2 restart
