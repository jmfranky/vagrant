#!/bin/bash

# https://git.io/v65Jb

if ! ps ax | grep -v grep | grep httpd > /dev/null; then
  systemctl enable httpd.service > /dev/null 2>&1
  cat > /etc/httpd/conf.d/welcome.conf <<EOF
NameVirtualHost *
<VirtualHost *:80>
  DocumentRoot /var/www/html
  <Directory "/var/www/html">
    Options FollowSymLinks
    AllowOverride ALL
  </Directory>
</VirtualHost>
EOF
  sed -i "s/User apache/User vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  sed -i "s/Group apache/Group vagrant/g" /etc/httpd/conf/httpd.conf > /dev/null 2>&1
  systemctl start httpd.service > /dev/null 2>&1
fi
