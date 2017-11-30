<?php 
		$host = "localhost";
        $username = "root";
        $password = "";
        $dbname = "memory";

        $mysqli = new mysqli($host,$username,$password,$dbname);
		mysqli_set_charset($mysqli,"utf8");

?>