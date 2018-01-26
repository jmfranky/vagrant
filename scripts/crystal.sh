hash crystal 2>/dev/null || {
  curl https://dist.crystal-lang.org/rpm/setup.sh | bash

  yum groupinstall development tools -y
  yum install readline-devel sqlite-devel openssl-devel libyaml-devel gc-devel libevent-devel libyaml-devel openssl-devel sqlite-devel crystal -y
} &> /dev/null
