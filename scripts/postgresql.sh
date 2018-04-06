#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/postgresql.sh

hash psql 2>/dev/null || {

  rpm -Uvh https://yum.postgresql.org/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
  yum install postgresql10-server postgresql10 postgresql10-libs postgresql10-contrib postgresql10-devel -y
  /usr/pgsql-10/bin/postgresql-10-setup initdb
  systemctl start postgresql-10.service
  systemctl enable postgresql-10.service
  sudo -u postgres psql 2>/dev/null -c "alter user postgres with password 'vagrant'" > /dev/null 2>&1
  sudo -u postgres createuser -s vagrant > /dev/null 2>&1
  ln -s /usr/pgsql-10/bin/p* /usr/local/bin # Create symlink to avoid errors with libpq-fe.h

  echo "listen_addresses = '*'" >> /var/lib/pgsql/10/data/postgresql.conf
  echo "host all all 0.0.0.0/0 trust" >> /var/lib/pgsql/10/data/pg_hba.conf
  sed -i "s/peer/trust/g" /var/lib/pgsql/10/data/pg_hba.conf
  sed -i "s/ident/trust/g" /var/lib/pgsql/10/data/pg_hba.conf

  systemctl restart postgresql-10

} > /dev/null 2>&1