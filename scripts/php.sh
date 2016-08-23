#!/bin/bash

hash php 2>/dev/null || {
  echo "Installing PHP 5.5"
  systemctl enable httpd.service > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm > /dev/null 2>&1
  yum install php55w php55w-opcache -y --skip-broken > /dev/null 2>&1
  yum install yum-plugin-replace -y > /dev/null 2>&1
  yum replace php-common --replace-with=php55w-common -y > /dev/null 2>&1
  yum install php55u-gd php55w-mysql php55w-mbstring -y > /dev/null 2>&1
  printf "NameVirtualHost *\n<VirtualHost *:80>\nDocumentRoot /var/www/html\n<Directory \"/var/www/html\">\nOptions FollowSymLinks\nAllowOverride ALL\n</Directory>\n</VirtualHost>" > /etc/httpd/conf.d/welcome.conf > /dev/null 2>&1
  sed -i "s/User apache/User vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  sed -i "s/Group apache/Group vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  systemctl start httpd.service > /dev/null 2>&1
}