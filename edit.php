 <?php
//include 'backend/conexion.php';
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
<br><br>
 	<div class="container">
    	<div class="row">
    	<form action="backend/guardarMemoria.php" method="POST">

            <input type="text" name="textrut">
            <label for="textrut" >Rut</label> 
            <br>

            <input type="text" name="texttp">
             <label for="texttp" >Tipo de recuerdo</label> 
            <br>
           
            <input type="text" name="textcobertura">
             <label for="textcobertura"  >Cobertura</label>
            <br>
            <br>
            
            <input type="date" name="textfecharecuerdo">
            <label class="active" for="textfecharecuerdo" >Fecha</label>
            <br>
            <br>
            <br>
         	<input class="btn green"   type="submit" value="Guardar" name="btnsave">


         </form>
    	</div>
    </div>

  
</body>
</html>
 