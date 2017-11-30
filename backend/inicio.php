<?php 
 include 'conexion.php';
  $query = "SELECT * FROM recuerdo WHERE COBERTURA LIKE '%amigos%'";
              $result= $mysqli->query($query);


 ?>