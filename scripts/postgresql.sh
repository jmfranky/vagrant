#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/postgresql.sh

hash psql 2>/dev/null || {
  rpm -ivh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm > /dev/null 2>&1
  yum install -y postgresql95 postgresql95-server postgresql95-libs postgresql95-contrib postgresql95-devel postgresql95-devel postgresql-devel > /dev/null 2>&1
  rm -rf /var/lib/pgsql/9.5/data > /dev/null 2>&1
  /usr/pgsql-9.5/bin/postgresql95-setup initdb > /dev/null 2>&1
  systemctl start postgresql-9.5 > /dev/null 2>&1
  systemctl enable postgresql-9.5 > /dev/null 2>&1
  chkconfig postgresql-9.5 on > /dev/null 2>&1
  sudo -u postgres psql 2>/dev/null -c "alter user postgres with password 'vagrant'" > /dev/null 2>&1
  sudo -u postgres createuser -s vagrant > /dev/null 2>&1
  echo "host all all 0.0.0.0/0 trust" >> /var/lib/pgsql/9.5/data/pg_hba.conf
  sed -i "s/peer/trust/g" /var/lib/pgsql/9.5/data/pg_hba.conf > /dev/null 2>&1
  sed -i "s/ident/trust/g" /var/lib/pgsql/9.5/data/pg_hba.conf > /dev/null 2>&1
  echo "listen_addresses = '*'" >> /var/lib/pgsql/9.5/data/postgresql.conf
  systemctl restart postgresql-9.5 > /dev/null 2>&1
}