#!/bin/bash

# https://git.io/v1zOG

hash virtualenv 2>/dev/null || {
  virtualenv --python $(which python2.7) ~/.virtualenvs/app
  wget -O /home/vagrant/venv https://git.io/v1zO0 
  chmod +x /home/vagrant/venv
}