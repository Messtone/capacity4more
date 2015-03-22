#!/bin/sh
set -e

# ---------------------------------------------------------------------------- #
#
# Installs && configure MySQL server & database(s).
#
# ---------------------------------------------------------------------------- #


# No need for special config if the profile is not installed.
if [ $INSTALL_PROFILE != 1 ]; then
 exit 0;
fi


# Copy the proper config file.
sudo cp -f $TRAVIS_BUILD_DIR/build/travis/config/drupal.cnf /etc/mysql/conf.d/drupal.cnf

# Restart the mysql service.
sudo service mysql restart
