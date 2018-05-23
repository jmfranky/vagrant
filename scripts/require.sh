#!/bin/bash

IFS=', ' read -r -a requirements <<< $1

for r in "${requirements[@]}"
do
  curl -s "https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/$r.sh" 2>&1 | bash
done