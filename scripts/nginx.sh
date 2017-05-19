#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/nginx.sh

hash nginx 2>/dev/null || {
  yum install -y epel-release > /dev/null 2>&1
  yum install -y nginx > /dev/null 2>&1
  sudo systemctl enable nginx > /dev/null 2>&1
  sudo systemctl start nginx > /dev/null 2>&1
}
