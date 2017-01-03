#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/node.sh


hash node 2>/dev/null || {
  curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash > /dev/null 2>&1
  echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
  source /home/vagrant/.profile
  version=$(nvm ls-remote | grep "Latest LTS" | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | sed -e 's/[^0-9.]//g')
  nvm install $version > /dev/null 2>&1
  nvm use $version > /dev/null 2>&1
  nvm alias default $version > /dev/null 2>&1
}