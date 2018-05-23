#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/nodejs.sh

hash node 2>/dev/null || {
  require nvm
  version=$(nvm ls-remote | tac | grep "Latest LTS" | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | sed -e 's/[^0-9.]//g')
  nvm install $version
  nvm use $version
  nvm alias default $version
} > /dev/null 2>&1
