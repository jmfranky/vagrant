#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/ruby.sh

hash rvm 2>/dev/null || {
  curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  curl -sSL https://get.rvm.io | bash -s stable --gems=bundler
  echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
} > /dev/null 2>&1
