<?php
/*
// mysql_connect("database-host", "username", "password")
$conn = mysql_connect("localhost","root","root") 
			or die("cannot connected");

// mysql_select_db("database-name", "connection-link-identifier")
@mysql_select_db("test",$conn);
*/

/**
 * mysql_connect is deprecated
 * using mysqli_connect instead
 */

$databaseHost = 'test.ckrg1bdwvkzk.us-east-1.rds.amazonaws.com:3306';
$databaseName = 'test';
$databaseUsername = 'root1234';
$databasePassword = 'root1234';

$mysql = mysql_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 
?>
