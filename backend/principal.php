<?php 
		
				include 'backend/conexion.php';
              $query = "SELECT * FROM recuerdo WHERE RUT LIKE '%1%' ";
              $result= $mysqli->query($query);

 ?>