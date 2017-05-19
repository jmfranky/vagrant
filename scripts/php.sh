#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/php.sh

hash php 2>/dev/null || {
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm  > /dev/null 2>&1
  yum install -y php56w php56w-opcache --skip-broken > /dev/null 2>&1
  yum install -y yum-plugin-replace > /dev/null 2>&1
  yum replace -y php-common --replace-with=php56w-common > /dev/null 2>&1
  yum install -y php56w-gd php56w-mysql php56w-mbstring php56w-intl php56w-xml > /dev/null 2>&1
  sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php.ini > /dev/null 2>&1
  systemctl restart httpd.service > /dev/null 2>&1
}
