hash python3.6 2>/dev/null || {
  yum -y install https://centos7.iuscommunity.org/ius-release.rpm > /dev/null 2>&1
  yum -y install python36u  > /dev/null 2>&1
  alias python=$(which python3.6)
}

hash pip3.6 2>/dev/null || {
  yum install -y python36u-pip libpng-devel git gcc-c++ mailcap automake python36u-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
  alias pip=$(which pip3.6)
  pip install virtualenv > /dev/null 2>&1
}