hash python3 2>/dev/null || {
  sudo yum install -y epel-release > /dev/null 2>&1
  sudo yum install -y python34 > /dev/null 2>&1
  alias python=$(which python3) > /dev/null 2>&1
}

hash pip 2>/dev/null || {
  curl -o /tmp https://bootstrap.pypa.io/get-pip.py
  python3 /tmp/get-pip.py
  alias pip=$(which pip3) > /dev/null 2>&1
  pip install virtualenv > /dev/null 2>&1
  yum install -y libpng-devel git mysql gcc-c++ mailcap automake python-devel libpng-devel libcurl-devel libxml2-devel openssl-devel libstdc++-devel > /dev/null 2>&1
}