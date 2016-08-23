#!/bin/bash
hash elixir 2>/dev/null || {
  cd /usr/bin
  sudo mkdir elixir
  cd /usr/bin/elixir
  wget https://github.com/elixir-lang/elixir/releases/download/v1.3.2/Precompiled.zip
  yum install -y unzip
  unzip Precompiled.zip
  echo 'export PATH="$PATH:/usr/bin/elixir/bin:/usr/bin/node-v6.1.0-linux-x64/bin"' > /etc/profile
  source /etc/profile
}