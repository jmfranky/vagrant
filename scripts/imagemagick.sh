#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/imagemagick.sh

hash convert 2>/dev/null || {
  yum install -y ImageMagick-devel ImageMagick
} > /dev/null 2>&1