#!/bin/sh
set -e

#if [ -d "$TRAVIS_BUILD_DIR/project/profiles/capacity4more/behat/dump" ]; then
  cd $TRAVIS_BUILD_DIR/project/profiles/capacity4more/behat

  # Make archive of all files in this directory.
  tar -czf behat.tar.gz *

  # Send archive as mail attachment.
  mutt -s "Travis report for behat dumps" climacon@gmail.com < behat.tar.gz

#fi