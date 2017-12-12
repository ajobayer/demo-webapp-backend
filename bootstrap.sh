#-----------------This is bootstrap for WebServer-----------------------
#!/bin/bash
yum install httpd php php-mysql git -y
yum update -y
chkconfig httpd on
service httpd start
#echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
git clone https://github.com/ajobayer/TestWebsite.git
cp -r TestWebsite/* .
sed -ie 's/app-server-elb-url/'"${URL}"'/g' index.php

#-----------------This is bootstrap for AppServer-----------------------
#!/bin/bash
yum install httpd php php-mysql git mysql-server mysql-client -y
yum update -y
chkconfig httpd on
service httpd start
#echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
git clone https://github.com/ajobayer/php-sample-crud.git
cp -r php-sample-crud/source/* .



