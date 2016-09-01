#!/bin/bash

# https://git.io/v65Ur

hash mongo 2>/dev/null || {
  cat > /etc/yum.repos.d/mongodb-org-3.2.repo <<EOF
[mongodb-org-3.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc
EOF
  yum install -y mongodb-org > /dev/null 2>&1
  chkconfig mongod on > /dev/null 2>&1
  if test -f /sys/kernel/mm/transparent_hugepage/enabled; then
     echo never > /sys/kernel/mm/transparent_hugepage/enabled
  fi
  if test -f /sys/kernel/mm/transparent_hugepage/defrag; then
     echo never > /sys/kernel/mm/transparent_hugepage/defrag
  fi
  echo 'mongod     soft    nproc     64000' > /etc/security/limits.d/90-nproc.conf
  service mongod start > /dev/null 2>&1
}
