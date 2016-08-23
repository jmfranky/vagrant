#!/bin/bash

systemctl mask firewalld > /dev/null 2>&1
systemctl stop firewalld > /dev/null 2>&1
