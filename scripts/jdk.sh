#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/jdk.sh

hash java 2>/dev/null || {
  yum install -y java-1.8.0-openjdk.x86_64
} > /dev/null 2>&1