# client machine <AppServer>
# yum install -y mysql-server mysql-client

# Databse connection from client machine  <AppServer>;
# mysql -h testprivate.ckrg1bdwvkzk.us-east-1.rds.amazonaws.com -P 3306 -u root1234 -p

### source createtable.sql;sss
### source inserttable.sql;

create database [databasename];
show databases;
use [db name];
show tables;

CREATE TABLE login (
id int(9) NOT NULL auto_increment,
name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
username varchar(100) NOT NULL,
password varchar(100) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE products (
id int(11) NOT NULL auto_increment,
name varchar(100) NOT NULL,
qty int(5) NOT NULL,
price decimal(10,2) NOT NULL,
login_id int(11) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT FK_products_1
FOREIGN KEY (login_id) REFERENCES login(id)
ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;