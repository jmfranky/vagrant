#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/mariadb.sh

hash mysql 2>/dev/null || {
  yum install -y httpd mariadb-server mariadb mysql-devel
  systemctl enable mariadb.service
  systemctl start mariadb.service
  mysql -uroot -e 'use mysql;UPDATE user SET password=PASSWORD("vagrant") WHERE User="root";GRANT ALL PRIVILEGES ON *.* TO "root"@"%" IDENTIFIED BY "vagrant" WITH GRANT OPTION;FLUSH PRIVILEGES;'
  echo "bind-address=0.0.0.0" >> /etc/my.cnf
  systemctl restart mariadb.service
} 2>&1 >/dev/null