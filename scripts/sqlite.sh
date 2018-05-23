#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/sqlite.sh

hash sqlite3 2>/dev/null || {
  yum install -y sqlite sqlite-devel
} > /dev/null 2>&1
