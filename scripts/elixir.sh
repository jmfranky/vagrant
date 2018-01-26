#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/elixir.sh

hash iex 2>/dev/null || {
  mkdir /usr/bin/elixir
  cd /usr/bin/elixir
  wget https://github.com/elixir-lang/elixir/releases/download/v1.5.0/Precompiled.zip
  yum install -y unzip
  unzip Precompiled.zip
  echo 'export PATH="$PATH:/usr/bin/elixir/bin"' > /etc/profile
  source /etc/profile
} > /dev/null 2>&1