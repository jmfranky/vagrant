#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/elasticsearch.sh

curl -s "http://localhost:9200" 2>&1 > /dev/null
if [ $? != 0 ]; then
  yum install java-1.8.0-openjdk.x86_64 -y
  cd /tmp
  wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.noarch.rpm
  yum install elasticsearch-1.5.2.noarch.rpm -y
  systemctl daemon-reload
  systemctl enable elasticsearch.service
  systemctl start elasticsearch.service
fi > /dev/null 2>&1