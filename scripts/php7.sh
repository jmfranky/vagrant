#!/bin/bash

# 

hash php 2>/dev/null || {
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm  > /dev/null 2>&1
  yum install php70w php70w-opcache -y --skip-broken > /dev/null 2>&1
  yum install yum-plugin-replace -y > /dev/null 2>&1
  yum replace php-common --replace-with=php70w-common -y > /dev/null 2>&1
  yum install php70u-gd php70w-mysql php70w-mbstring php70w-intl -y > /dev/null 2>&1
}