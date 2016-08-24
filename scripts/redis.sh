#!/bin/bash

# https://git.io/v65UA

hash redis-cli 2>/dev/null || {
  echo "Installing Redis"
  wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/ > /dev/null 2>&1
  rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm > /dev/null 2>&1
  yum install -y redis > /dev/null 2>&1
  systemctl enable redis.service > /dev/null 2>&1
  systemctl start redis.service > /dev/null 2>&1
}