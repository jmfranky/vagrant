#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/postgis.sh

if ! yum list installed "postgis2_95" >/dev/null 2>&1; then
  yum install -y postgis2_95 > /dev/null 2>&1
fi
