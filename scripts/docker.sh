#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/docker.sh

hash docker 2>/dev/null || {
  yum install -y yum-utils device-mapper-persistent-data lvm2 > /dev/null 2>&1
  yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo > /dev/null 2>&1
  sudo yum makecache fast > /dev/null 2>&1
  yum install -y docker-ce > /dev/null 2>&1
  systemctl enable docker > /dev/null 2>&1
  systemctl start docker > /dev/null 2>&1
}