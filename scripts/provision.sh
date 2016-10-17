#!/bin/bash

hash dialog 2>/dev/null || {
  brew install dialog > /dev/null 2>&1
}

hash wget 2>/dev/null || {
  brew install wget > /dev/null 2>&1
}


scripts=("https://raw.githubusercontent.com/Mullen/vagrant/master/docker/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/elixer-postgres/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/lamp/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/lemp/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/meanjs/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/node-mongodb/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/python/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/ruby-mongodb/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/ruby-mariadb/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/ruby-postgres/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/ruby-redis/Vagrantfile" "https://raw.githubusercontent.com/Mullen/vagrant/master/yeoman/Vagrantfile")

dialog --clear --title " Vagrant Provisioner " --menu "Choose one of the following builds:" 20 60 10 \
1 "Docker" \
2 "Elixer with PostgreSQL" \
3 "LAMP" \
4 "LEMP" \
5 "MeanJS" \
6 "Node with MongoDB" \
7 "Python with MySQL" \
8 "Ruby with MongoDB" \
9 "Ruby with MySQL" \
10 "Ruby with PostgreSQL" \
11 "Ruby with Redis" \
12 "Yeoman" 2> /tmp/.vagrantprovisioner

choice=$(cat /tmp/.vagrantprovisioner)
if [ ! ${choice:+1} ]; then
  rm /tmp/.vagrantprovisioner
  clear
  exit
fi

choice=$(( ${choice#0} - 1 ))
rm /tmp/.vagrantprovisioner

wget ${scripts[$choice]} > /dev/null 2>&1

dialog --clear --title " Vagrant Provisioner " --clear --yesno "Would you like to boot Vagrant now?" 10 30 2> /tmp/.vagrantprovisioner
case $? in
  0)
    clear
    vagrant up | dialog --title " Building " --progressbox 40 80
    ;;
  1)
    clear
    exit
    ;;
  255)
    clear
    exit
    ;;
esac
exit