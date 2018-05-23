#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/elasticsearch.sh

curl -s "http://localhost:9200" 2>&1 > /dev/null
if [ $? != 0 ]; then
  require jdk
  cd /tmp
  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.3.rpm
  rpm --install elasticsearch-6.2.3.rpm
  systemctl daemon-reload
  systemctl enable elasticsearch.service
  systemctl start elasticsearch.service
fi > /dev/null 2>&1