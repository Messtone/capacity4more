#!/bin/sh
set -e

# ---------------------------------------------------------------------------- #
#
# Index the Drupal content in Solr.
#
# ---------------------------------------------------------------------------- #


# No need for Solr if the profile is not installed.
if [ $INSTALL_PROFILE != 1 ]; then
 exit 0;
fi


# Run the index batch.
drush @capacity4more search-api-index

# Make sure all committed content is indexed.
sleep 10
wget http://localhost:8983/solr/capacity4more/update?commit=true
