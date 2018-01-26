#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/phoenix.sh

if ! mix local | grep --quiet "phoenix.new"; then
  {
    cd ~
    yes | mix local.hex
    yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
    sudo yum install -y inotify-tools
  } > /dev/null 2>&1
fi