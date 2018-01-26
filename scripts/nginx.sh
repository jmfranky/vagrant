#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/nginx.sh

hash nginx 2>/dev/null || {
  yum install -y epel-release
  yum install -y nginx
  sudo systemctl enable nginx
  sudo systemctl start nginx
} 2>&1 >/dev/null
