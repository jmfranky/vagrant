#!/bin/bash

# https://git.io/v65Uk

hash erl 2>/dev/null || {
  wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm > /dev/null 2>&1
  rpm -Uvh erlang-solutions-1.0-1.noarch.rpm > /dev/null 2>&1
  yum update -y > /dev/null 2>&1
  yum install -y epel-release > /dev/null 2>&1
  yum install -y gcc gcc-c++ glibc-devel make ncurses-devel openssl-devel autoconf java-1.8.0-openjdk-devel git wget wxBase.x86_64 erlang > /dev/null 2>&1
}