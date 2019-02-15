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

// This is the main DB configuration; should update based on RDS 
$databaseHost = 'db-endpoint';
$databaseName = 'db-name';
$databaseUsername = 'db-username';
$databasePassword = 'db-password';

$mysql = mysql_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

?>
