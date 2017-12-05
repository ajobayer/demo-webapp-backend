#!/bin/bash
yum install httpd php php-mysql git -y
# git installation: yum install git
yum update -y
chkconfig httpd on
service httpd start
#echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
git clone https://github.com/ajobayer/php-sample-crud.git
cp php-sample-crud/source/* .
