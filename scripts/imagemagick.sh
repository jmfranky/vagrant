#!/bin/bash

# https://git.io/v65J0

hash convert 2>/dev/null || {
  yum install -y ImageMagick-devel ImageMagick > /dev/null 2>&1
}