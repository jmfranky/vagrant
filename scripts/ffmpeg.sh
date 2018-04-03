#!/bin/bash

# https://raw.githubusercontent.com/stfnhh/vagrant/master/scripts/ffmpeg.sh

hash ffmpeg 2>/dev/null || {
  yum -y install epel-release
  rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
  rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
  yum -y install ffmpeg ffmpeg-devel
} > /dev/null 2>&1