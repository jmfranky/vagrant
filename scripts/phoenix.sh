#!/bin/bash

# https://git.io/v65Uy

if ! mix local | grep --quiet "phoenix.new"; then
  cd ~
  yes | mix local.hex > /dev/null 2>&1
  yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez > /dev/null 2>&1
  sudo yum install -y inotify-tools > /dev/null 2>&1
fi