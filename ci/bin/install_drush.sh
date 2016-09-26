#!/bin/sh
set -e

# ---------------------------------------------------------------------------- #
#
# Installs Drush.
#
# ---------------------------------------------------------------------------- #


# Install Drush.
cd $TRAVIS_BUILD_DIR
composer global require drush/drush 8.1.3
phpenv rehash

# Create the Drush alias.
mkdir -p ~/.drush
cp $TRAVIS_BUILD_DIR/ci/config/aliases.drushrc.php ~/.drush/

drush --version
