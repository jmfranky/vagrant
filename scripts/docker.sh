#!/bin/bash

# https://git.io/v65Jp

hash docker 2>/dev/null || {
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm > /dev/null 2>&1
  curl -fsSL https://get.docker.com/ | sh > /dev/null 2>&1
  usermod -aG docker vagrant > /dev/null 2>&1
  chkconfig docker on > /dev/null 2>&1
  service docker start > /dev/null 2>&1
}