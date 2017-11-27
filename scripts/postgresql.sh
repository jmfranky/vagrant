#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/postgresql.sh

hash psql 2>/dev/null || {
  rpm -Uvh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-1.noarch.rpm > /dev/null 2>&1
  yum install -y postgresql10-server postgresql10 postgresql10-libs postgresql10-contrib postgresql10-devel > /dev/null 2>&1
  rm -rf /var/lib/pgsql/10/data > /dev/null 2>&1
  /usr/pgsql-10/bin/postgresql-10-setup initdb > /dev/null 2>&1
  systemctl start postgresql-10 > /dev/null 2>&1
  systemctl enable postgresql-10 > /dev/null 2>&1
  chkconfig postgresql-10 on > /dev/null 2>&1
  sudo -u postgres psql 2>/dev/null -c "alter user postgres with password 'vagrant'" > /dev/null 2>&1
  sudo -u postgres createuser -s vagrant > /dev/null 2>&1
  echo "host all all 0.0.0.0/0 trust" >> /var/lib/pgsql/10/data/pg_hba.conf
  echo "listen_addresses = '*'" >> /var/lib/pgsql/10/data/postgresql.conf
  systemctl restart postgresql-10 > /dev/null 2>&1
}