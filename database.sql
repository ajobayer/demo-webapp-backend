# client machine <AppServer>
# yum install -y mysql-server mysql-client
# create database test;

# Databse connection from client machine  <AppServer>;
# mysql -h testprivate.ckrg1bdwvkzk.us-east-1.rds.amazonaws.com -P 3306 -u root1234 -p

# source createtable.sql;sss
# source inserttable.sql;

# use test;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
);

