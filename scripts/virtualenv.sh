#!/bin/bash

# https://git.io/v1zOG

hash virtualenv 2>/dev/null || {
  virtualenv --python $(which python2.7) /home/vagrant/.virtualenvs/app
}