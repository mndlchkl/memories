<?php
include 'backend/conexion.php';
include 'backend/inicio.php';
session_start();
if($_SESSION['loginUser']!='true')
		header("location: index.php");
		else
?>	 
<!DOCTYPE html>
<html lang="es">
<head>
 	<?php include('import/header.php'); ?>
</head>
<body>
 	<?php include('import/menu.php'); ?>
	
	<div class="container">
		<div class="row">
			<table class="bordered striped hoverable centered ">
				<thead>
					<th> Tipo de recuerdo </th>
					<th> Rut </th>
					<th> Cobertura </th>
				</thead>
				<tbody>
					<?php  while($row = $result->fetch_assoc()) { ?>
					<tr>
						<td> <?= $row["TIPO_RECUERDO"];?> </td>
						<td> <?= $row["RUT"];?> </td>
						<td> <?= $row["COBERTURA"];?> </td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
	
</body>
</html>
 