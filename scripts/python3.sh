#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/python3.sh

# No need to install python, system includes python 2.7 just need to install pip.

hash python3.6 2>/dev/null || {
  yum -y install https://centos7.iuscommunity.org/ius-release.rpm > /dev/null 2>&1
  yum -y install python36u  > /dev/null 2>&1
  alias python=$(which python3.6)
  echo "alias python=$(which python3.6)" >> /etc/bashrc
  echo "alias python=$(which python3.6)" >> /home/vagrant/.bashrc
  echo "alias python=$(which python3.6)" >> /root/.bashrc
}

hash pip3.6 2>/dev/null || {
  yum install -y python36u-pip libpng-devel git gcc-c++ mailcap automake python36u-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
  alias pip=$(which pip3.6)
  echo "alias pip=$(which pip3.6)" >> /etc/bashrc
  echo "alias pip=$(which pip3.6)" >> /home/vagrant/.bashrc
  echo "alias pip=$(which pip3.6)" >> /root/.bashrc
  pip3.6 install virtualenv > /dev/null 2>&1
}