#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/rvm.sh

hash rvm 2>/dev/null || {
  curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  curl -sSL https://get.rvm.io | bash -s stable --gems=bundler
  echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
} 2>&1 >/dev/null
