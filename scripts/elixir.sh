#!/bin/bash

# https://git.io/v65Uq

hash elixir 2>/dev/null || {
  cd /usr/bin > /dev/null 2>&1
  sudo mkdir elixir > /dev/null 2>&1
  cd /usr/bin/elixir > /dev/null 2>&1
  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.2/Precompiled.zip > /dev/null 2>&1
  yum install -y unzip > /dev/null 2>&1
  unzip Precompiled.zip > /dev/null 2>&1
  echo 'export PATH="$PATH:/usr/bin/elixir/bin"' > /etc/profile
  source /etc/profile > /dev/null 2>&1
}