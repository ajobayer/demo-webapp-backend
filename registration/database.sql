# client machine <AppServer>
# yum install -y mysql-server mysql-client

# Databse connection from client machine  <AppServer>;
# mysql -h testprivate.ckrg1bdwvkzk.us-east-1.rds.amazonaws.com -P 3306 -u root1234 -p
mysql -h  ddcd0mkui87k0c.cbytukajswxn.ap-southeast-2.rds.amazonaws.com -P 3306 -u root1234 -p root1234 demomysql


Importing: 
mysql -h  ddcd0mkui87k0c.cbytukajswxn.ap-southeast-2.rds.amazonaws.com -P 3306 -u root1234 -proot1234 < import_demomysql.sql
-h hostname
-P port_no
-u username
-p password db_name


### source createtable.sql;sss
### source inserttable.sql;

create database [database_name];


use [db_name];
show tables;

create database demomysql;
use demomysql;

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

# Insert value into login table;
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (1,'Admin','admin@gmail','admin123',md5('admin123'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (2,'Abdullah Jobayer','ajobayer@gmail','ajobayer',md5('ajobayer'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (3,'Tahir Jobayer','tahir@gmail','ajobayer',md5('tahir'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (4,'Adib Jobayer','adib@gmail','adib',md5('adib'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (5,'test','test@gmail','test',md5('test'));

# Insert value into products table;
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (1,'iPhone 8',10,400.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (2,'iPhone 7',10,300.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (3,'iPhone 6',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (4,'iPhone 4',10,100.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (5,'Samsung S8',10,800.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (6,'Samsung S6',10,500.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (7,'Samsung S4',10,300.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (8,'Samsung S3',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (9,'Samsung S2',10,100.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (10,'Nokia 1',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (12,'Nokia 2',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (13,'Nokia 3',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (14,'Nokia 4',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (15,'Nokia 5',10,200.00,1);