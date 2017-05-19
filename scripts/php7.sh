#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/php7.sh

hash php 2>/dev/null || {
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  > /dev/null 2>&1
  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm  > /dev/null 2>&1
  yum install -y php70w php70w-opcache --skip-broken > /dev/null 2>&1
  yum install -y yum-plugin-replace > /dev/null 2>&1
  yum replace -y php-common --replace-with=php70w-common > /dev/null 2>&1
  yum install -y php70u-gd php70w-mysql php70w-mbstring php70w-intl > /dev/null 2>&1
}