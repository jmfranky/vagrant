#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/imagemagick.sh

hash convert 2>/dev/null || {
  yum install -y ImageMagick-devel ImageMagick
} 2>&1 >/dev/null