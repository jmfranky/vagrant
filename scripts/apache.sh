#!/bin/bash

# https://git.io/v65Jb

hash httpd 2>/dev/null || {
  echo "Installing Apache"
  systemctl enable httpd.service > /dev/null 2>&1
  printf "NameVirtualHost *\n<VirtualHost *:80>\nDocumentRoot /var/www/html\n<Directory \"/var/www/html\">\nOptions FollowSymLinks\nAllowOverride ALL\n</Directory>\n</VirtualHost>" > /etc/httpd/conf.d/welcome.conf > /dev/null 2>&1
  sed -i "s/User apache/User vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  sed -i "s/Group apache/Group vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  systemctl start httpd.service
}