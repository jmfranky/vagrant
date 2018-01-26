#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/php.sh

hash php 2>/dev/null || {
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm 
  yum install -y php56w php56w-opcache --skip-broken
  yum install -y yum-plugin-replace
  yum replace -y php-common --replace-with=php56w-common
  yum install -y php56w-gd php56w-mysql php56w-mbstring php56w-intl php56w-xml
  sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php.ini
  systemctl restart httpd.service
} 2>&1 >/dev/null
