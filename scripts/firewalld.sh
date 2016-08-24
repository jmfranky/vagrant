#!/bin/bash

# https://git.io/v65JW

echo "Stopping Firewall"
systemctl mask firewalld > /dev/null 2>&1
systemctl stop firewalld > /dev/null 2>&1
