#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/firewalld.sh

systemctl mask firewalld > /dev/null 2>&1
systemctl stop firewalld > /dev/null 2>&1
