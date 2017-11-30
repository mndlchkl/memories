<?php 
		
			 include 'conexion.php';
              $query = "SELECT * FROM recuerdo WHERE ID_RECUERDO LIKE '%3%' ";
              $result= $mysqli->query($query);

 ?>