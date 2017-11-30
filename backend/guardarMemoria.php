	<?php
 

 include 'conexion.php';

$ID_DETMEMORIA= isset($_POST['textid'])? $_POST['textid']:NULL  ;
$RUT= isset($_POST['textrut'])?$_POST['textrut']:NULL;
$TIPO_RECUERDO= isset($_POST['texttp'])? $_POST['texttp']:NULL;
$COBERTURA=   isset($_POST['textcobertura']) ?$_POST['textcobertura']:NULL;
$FECHA_RECUERDO=   isset($_POST['textfecharecuerdo']) ?$_POST['textfecharecuerdo']:NULL;

$stmt = $mysqli->prepare("INSERT INTO recuerdo(ID_DETMEMORIA, RUT, TIPO_RECUERDO, COBERTURA,FECHA_RECUERDO) 
						 VALUES (?, ?, ?,?,?)");
	$stmt->bind_param("sssss", $ID_DETMEMORIA, $RUT, $TIPO_RECUERDO, $COBERTURA, $FECHA_RECUERDO);
	$stmt->execute();
	if (! ($stmt->error == '') ) {
	 	echo "error : ". $stmt->error;
	}else
	{
		echo "Nota creada correctamente." ;   	
	}
	$stmt->close();
	$mysqli->close();


	?>