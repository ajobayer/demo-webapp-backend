<?php



$databaseHost = 'test.ckrg1bdwvkzk.us-east-1.rds.amazonaws.com';

$databaseName = 'test';

$databaseUsername = 'root1234';

$databasePassword = 'root1234';



//connection to the database

$dbhandle = mysql_connect($databaseHost, $databaseUsername, $databasePassword) or die("Unable to connect to MySQL"); 

echo "Connected to MySQL using username - $databaseUsername, password - $databasePassword, host - $databaseHost<br>"; 

$selected = mysql_select_db("$databaseName",$dbhandle)   or die("Unable to connect to MySQL DB - check the database name and try again."); 



?>
