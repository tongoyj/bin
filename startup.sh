#! /bin/bash
apt-get update
apt-get install -y nginx
service nginx start
sed -i -- 's/nginx/RightScale Platform in Action - '"\$HOSTNAME"'/' /usr/share/nginx/html/index.html
