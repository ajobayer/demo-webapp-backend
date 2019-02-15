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

#Create users Table;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
);

# Insert value into users table;
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (1,'Jobayer','Jobayer',30,'ajobayer@gmail');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (2,'Sunil','Sunil',40,'sunil@gmail');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (3,'Mamun','Mamun',35,'mamun@gmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (4,'Russel','Russel',18,'russel@yahoo.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (5,'Max','Max',55,'max@itil.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (6,'Moly','Moly',34,'None');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (7,'Poly','Poly',30,'None');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (8,'Jelly','Jelly',20,'None');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (9,'Walls','Walls',20,'None');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (10,'William','William',25,'william@gmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (11,'Jack','Jack',45,'jack@gmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (12,'Dillir','Dillir',23,'dillir@gmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (13,'Sumi',33,'sumi@gmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (14,'Danial','Danial',60,'danial@hotmail.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (15,'Web82','Web82',82,'web82@cts.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (16,'Web116','Web116',116,'web116@cts.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (17,'Samik','Samik',32,'samik@cts.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (18,'Sonia','Sonia',32,'samik@cts.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (19,'Salman','Salman',32,'samik@cts.com');
INSERT INTO `users` (`id`,`name`,`password`,`age`,`email`) VALUES (20,'David','David',32,'samik@cts.com');

