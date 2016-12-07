#!/bin/bash

# https://git.io/

hash virtualenv 2>/dev/null || {
  pip install virtualenv > /dev/null 2>&1
  virtualenv --python $(which python2.7) ~/.virtualenvs/app > /dev/null 2>&1
  wget -O /usr/local/bin/venv URL > /dev/null 2>&1
  chmod +x /usr/local/bin/venv > /dev/null 2>&1
}