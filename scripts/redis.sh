#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/redis.sh

hash redis-cli 2>/dev/null || {
  wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/
  rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm
  yum install -y redis
  systemctl enable redis.service
  systemctl start redis.service
} 2>&1 >/dev/null