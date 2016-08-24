#!/bin/bash

# https://git.io/v65U9

hash php 2>/dev/null || {
  echo "Installing PHP 5.5"
  rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm > /dev/null 2>&1
  yum install php55w php55w-opcache -y --skip-broken > /dev/null 2>&1
  yum install yum-plugin-replace -y > /dev/null 2>&1
  yum replace php-common --replace-with=php55w-common -y > /dev/null 2>&1
  yum install php55u-gd php55w-mysql php55w-mbstring -y > /dev/null 2>&1
}