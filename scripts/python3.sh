hash python3 2>/dev/null || {
  yum install -y gcc gcc-c++
  cd /usr/src
  wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
  tar xzf Python-3.6.1.tgz
  cd Python-3.6.1
  ./configure
  make altinstall
  # sudo yum install -y epel-release > /dev/null 2>&1
  # sudo yum install -y python34 > /dev/null 2>&1
  alias python=$(which python3.6) > /dev/null 2>&1
}

hash pip3 2>/dev/null || {
  curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py
  /usr/local/bin/easy_install-3.6 pip
  pip install virtualenv > /dev/null 2>&1
  yum install -y libpng-devel git mysql mailcap automake python-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
}