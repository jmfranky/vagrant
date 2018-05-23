#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/nvm.sh

hash nvm 2>/dev/null || {
  curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
  echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
  source /home/vagrant/.profile
} > /dev/null 2>&1
