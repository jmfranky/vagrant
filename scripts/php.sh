#!/bin/bash

# https://git.io/v65U9

hash php 2>/dev/null || {
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm  > /dev/null 2>&1
  yum install php56w php56w-opcache -y --skip-broken > /dev/null 2>&1
  yum install yum-plugin-replace -y > /dev/null 2>&1
  yum replace php-common --replace-with=php56w-common -y > /dev/null 2>&1
  yum install php56u-gd php56w-mysql php56w-mbstring php56w-intl -y > /dev/null 2>&1
}