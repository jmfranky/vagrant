#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/apache.sh

if ! ps ax | grep -v grep | grep httpd > /dev/null; then
  {
    systemctl enable httpd.service
    cat > /etc/httpd/conf.d/welcome.conf <<EOF
NameVirtualHost *
<VirtualHost *:80>
  DocumentRoot /var/www/html
  <Directory "/var/www/html">
    Options FollowSymLinks
    AllowOverride All
  </Directory>
</VirtualHost>
EOF
    sed -i "s/User apache/User vagrant/g" /etc/httpd/conf/httpd.conf
    sed -i "s/Group apache/Group vagrant/g" /etc/httpd/conf/httpd.conf
    sed -i "s/EnableSendfile on/EnableSendfile off/g" /etc/httpd/conf/httpd.conf
    systemctl start httpd.service
    ln -s /var/www/html /home/vagrant/app
  }
fi
