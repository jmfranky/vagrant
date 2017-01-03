#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/nginx.sh

hash nginx 2>/dev/null || {
  yum install epel-release -y > /dev/null 2>&1
  yum install nginx -y > /dev/null 2>&1
  sudo systemctl enable nginx > /dev/null 2>&1
  sudo systemctl start nginx > /dev/null 2>&1
}
