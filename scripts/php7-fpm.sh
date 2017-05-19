#!/bin/bash

# https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/php7-fpm.sh

hash nginx 2>/dev/null || {
  echo "Nginx is required"
  exit;
}

hash php 2>/dev/null || {
  echo "PHP 7 is required"
  exit;
}

yum install -y php70w-fpm > /dev/null 2>&1

systemctl start php-fpm > /dev/null 2>&1
systemctl enable php-fpm > /dev/null 2>&1

sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php.ini > /dev/null 2>&1

chown -R nginx:nginx /var/www/html

cat > /etc/nginx/conf.d/default.conf <<EOF
server {
  listen       80;
  server_name  localhost;

  location / {
    root   /var/www/html;
    index  index.html index.htm index.php;
  }

  error_page   500 502 503 504  /50x.html;
  location = /50x.html {
    root   /usr/share/nginx/html;
  }

  location ~ \.php\$ {
    root           /var/www/html;
    try_files \$uri =404;
    fastcgi_pass   127.0.0.1:9000;
    fastcgi_index  index.php;
    fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;
    include        fastcgi_params;
  }
}
EOF

ln -s /var/www/html/ /home/vagrant/app

systemctl restart nginx > /dev/null 2>&1

