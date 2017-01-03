#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/rvm.sh

hash rvm 2>/dev/null || {
  curl -sSL https://rvm.io/mpapis.asc | gpg2 --import - > /dev/null 2>&1
  curl -sSL https://get.rvm.io | bash -s stable --gems=bundler > /dev/null 2>&1
  echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
}
