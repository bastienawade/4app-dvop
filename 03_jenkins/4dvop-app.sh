#!/bin/bash
apt-get update -y
apt-get install nginx -y && apt install git -y
rm /var/www/html/*
cd ~/var/www/html
git clone https://github.com/diranetafen/static-website-example.git .
sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/sites-enabled/default
cp files/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
