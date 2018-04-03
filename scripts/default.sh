#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/default.sh

systemctl mask firewalld > /dev/null 2>&1
systemctl stop firewalld > /dev/null 2>&1

hash git 2>/dev/null || {
  yum install -y git
} > /dev/null 2>&1

hash vim 2>/dev/null || {
  yum install -y vim
} > /dev/null 2>&1