<?php 
		$host = "localhost";
        $username = "root";
        $password = "";
        $dbname = "memories";

        $mysqli = new mysqli($host,$username,$password,$dbname);
		mysqli_set_charset($mysqli,"utf8");

?>