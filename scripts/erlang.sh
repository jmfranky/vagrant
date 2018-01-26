#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/erlang.sh

hash erl 2>/dev/null || {
  wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
  rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
  yum update -y
  yum install -y epel-release
  yum install -y gcc gcc-c++ glibc-devel make ncurses-devel openssl-devel autoconf java-1.8.0-openjdk-devel git wget wxBase.x86_64 erlang
} > /dev/null 2>&1