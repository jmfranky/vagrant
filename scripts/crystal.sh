hash crystal 2>/dev/null || {
  sudo yum groupinstall development tools
  sudo yum install readline-devel sqlite-devel openssl-devel libyaml-devel gc-devel libevent-devel libyaml-devel openssl-devel sqlite-devel
  curl https://dist.crystal-lang.org/rpm/setup.sh | bash > /dev/null 2>&1
  yum install crystal -y > /dev/null 2>&1
}
