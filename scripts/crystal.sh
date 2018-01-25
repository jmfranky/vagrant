hash crystal 2>/dev/null || {
  curl https://dist.crystal-lang.org/rpm/setup.sh | bash > /dev/null 2>&1
  yum install crystal -y > /dev/null 2>&1
}
