#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/crystal.sh

hash crystal 2>/dev/null || {
  curl https://dist.crystal-lang.org/rpm/setup.sh | bash

  yum groupinstall -y development tools
  yum install -y readline-devel sqlite-devel openssl-devel libyaml-devel gc-devel libevent-devel libyaml-devel openssl-devel sqlite-devel crystal
} 2>&1 >/dev/null
