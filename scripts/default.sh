#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/default.sh

systemctl mask firewalld > /dev/null 2>&1
systemctl stop firewalld > /dev/null 2>&1

hash git 2>/dev/null || {
  yum install -y git
} 2>&1 >/dev/null

hash vim 2>/dev/null || {
  yum install -y vim
} 2>&1 >/dev/null