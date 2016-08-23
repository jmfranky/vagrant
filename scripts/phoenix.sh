#!/bin/bash

hash mix 2>/dev/null || {
  cd ~
  yes | mix local.hex
  yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
  sudo yum install -y inotify-tools
}