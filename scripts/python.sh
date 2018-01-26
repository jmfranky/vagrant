#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/python.sh

# No need to install python, system includes python 2.7 just need to install pip.

hash pip 2>/dev/null || {
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
  yum install -y python-pip libpng-devel git mysql gcc-c++ mailcap automake python-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel
  pip install --upgrade pip
  pip install virtualenv
} 2>&1 >/dev/null