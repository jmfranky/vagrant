#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/mariadb.sh

hash mysql 2>/dev/null || {
  yum install -y httpd mariadb-server mariadb mysql-devel > /dev/null 2>&1
  systemctl enable mariadb.service > /dev/null 2>&1
  systemctl start mariadb.service > /dev/null 2>&1
  mysql -uroot -e 'use mysql;UPDATE user SET password=PASSWORD("vagrant") WHERE User="root";GRANT ALL PRIVILEGES ON *.* TO "root"@"%" IDENTIFIED BY "vagrant" WITH GRANT OPTION;FLUSH PRIVILEGES;' > /dev/null 2>&1
  echo "bind-address=0.0.0.0" >> /etc/my.cnf > /dev/null 2>&1
  systemctl restart mariadb.service > /dev/null 2>&1
}