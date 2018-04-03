#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/redis.sh

hash redis-cli 2>/dev/null || {
  yum install epel-release -y
  yum install redis -y
  systemctl start redis
  systemctl enable redis
} > /dev/null 2>&1