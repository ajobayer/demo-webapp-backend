<?php session_start(); ?>
<html>
<head>
    <title>Homepage</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
 
<body>
    <div id="header">
        Welcome to Admin Portal (Backend)
    </div>
    <?php
    $txt = "Server IP Address:"; $eip = file_get_contents('http://169.254.169.254/latest/meta-data/local-ipv4');
    echo "<h2>".$txt."&nbsp;".$eip. "</h2>"; echo "<br>";
    if(isset($_SESSION['valid'])) {            
        include("connection.php");                    
        $result = mysqli_query($mysqli, "SELECT * FROM login");
    ?>                
        Welcome <?php echo $_SESSION['name'] ?> ! <a href='logout.php'>Logout</a><br/>
        <br/>
        <a href='view.php'>View and Add Products</a>
        <br/><br/>
    <?php    
    } else {
        echo "You must be logged in to view this page.<br/><br/>";
        echo "<a href='login.php'>Login</a> | <a href='register.php'>Register</a>";
    }
    ?>
    <div id="footer">
        Created by <a href="http://github.com/ajobayer" title="Abdulalh Jobayer">Abdulalh Jobayer</a>
    </div>
</body>
</html>
