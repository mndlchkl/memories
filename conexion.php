<?php
$mysqli = new mysqli("localhost", "root", "", "memory");

/* comprobar la conexi�n */
if ($mysqli->connect_errno) {
    printf("Conexi�n fallida: %s\n", $mysqli->connect_error);
    exit();
}

/* comprobar si el servidor sigue vivo */
if ($mysqli->ping()) {
    printf ("�La conexi�n est� bien!\n");
} else {
    printf ("Error: %s\n", $mysqli->error);
}


/* cerrar la conexi�n */
$mysqli->close();
?>