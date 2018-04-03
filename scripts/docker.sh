#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/docker.sh

hash docker 2>/dev/null || {
  yum install -y yum-utils device-mapper-persistent-data lvm2
  yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  sudo yum makecache fast
  yum install -y docker-ce
  systemctl enable docker
  systemctl start docker
} > /dev/null 2>&1