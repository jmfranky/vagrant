#!/bin/bash

# https://git.io/v65UQ

hash pip 2>/dev/null || {
  echo "Installing Pip"
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm > /dev/null 2>&1
  yum install -y python-pip MySQL-python libpng-devel git mysql gcc-c++ mailcap automake mysql-devel python-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
  pip install --upgrade pip > /dev/null 2>&1
  if test -f "/opt/python/current/app/requirements.txt"; then
    pip install -r /opt/python/current/app/requirements.txt > /dev/null 2>&1
  fi
  ln -s /opt/python/current/app/ /home/vagrant/app > /dev/null 2>&1
}