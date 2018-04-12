#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/sqlite.sh

hash sqlite3 2>/dev/null || {
  yum install sqlite sqlite-devel -y
} > /dev/null 2>&1
