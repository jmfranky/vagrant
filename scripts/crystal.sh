#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/crystal.sh

hash crystal 2>/dev/null || {
  curl https://dist.crystal-lang.org/rpm/setup.sh | bash
  yum groupinstall -y development tools
  yum install -y readline-devel sqlite-devel openssl-devel libyaml-devel gc-devel libevent-devel libyaml-devel openssl-devel sqlite-devel 
  yum remove -y libgc
  yum install -y crystal
} > /dev/null 2>&1
