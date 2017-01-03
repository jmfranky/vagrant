#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/pip.sh

hash pip 2>/dev/null || {
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm > /dev/null 2>&1
  yum install -y python-pip MySQL-python libpng-devel git mysql gcc-c++ mailcap automake mysql-devel python-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
  pip install --upgrade pip > /dev/null 2>&1
  pip install virtualenv > /dev/null 2>&1
}