#!/bin/bash

# https://git.io/v1zOG

hash virtualenv 2>/dev/null || {
  virtualenv --python $(which python2.7) ~/.virtualenvs/app > /dev/null 2>&1
  wget -O /usr/local/bin/venv https://git.io/v1zO0 > /dev/null 2>&1
  chmod +x /usr/local/bin/venv > /dev/null 2>&1
}