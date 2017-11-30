Laboratorio 4 (17%)

Entrega funcional del Sistema en los siguientes puntos

Tablas Base de datos:
Debe construir las tablas necesarias para el funcionamiento del árbol genealógico y la línea de tiempo de los recuerdos.
*Se evalúa la existencia de llaves foráneas y claves primarias y las relaciones entre las tablas según corresponda.
Aplicación:
Debe contener la funcionalidad de:
•	Árbol Genealógico
•	Línea de tiempo gráfica con los recuerdos del usuario.

Correcciones de la versión anterior:
Login
mejorar interfaz

Vista Principal
Debe mostrar los recuerdos del usuario y los que otros usuarios permiten que vea

Vista de un recuerdo detallado
No existe esta ventana, debe entregarse.

Editor de recuerdo
falta tabla tipo de recuerdo(no se debe escribir el campo, se debe seleccionar desde la otra tabla)
falta tabla tipo cobertura(no se debe escribir el campo, se debe seleccionar desde la otra tabla)

Correcciones Generales
Debe utilizar Ajax para las consultas a mysql y evitar la mayoría de $POST $GET 
No cierra realmente la sesión solo direccióna al login, corregir en próxima versión.
La aplicación debe estar orientada a objeto, por lo que las operaciones con tablas no se hacen directamente.
Las consultas a la base de datos se deben realizar todas con Procedimiento Almacenado.


Fecha de entrega: 15/11/2017 
Sistema de almacenamiento de recuerdos personales.
Un usuario puede crear su cuenta en el sistema, cambiar su contraseña, cerrar su cuenta, agregar recuerdos, gestionar (agregar; eliminar) amigos.
Una aplicación que permite registrar en escala de tiempo acontecimientos importantes para un usuario, partiendo de la base de la clasificación de sus propios recuerdos en las diferentes etapas de su vida, los recuerdos o vivencias del usuario se pueden clasificar en:
Sensoriales (Visuales, Auditivos, Olfatorio, gustativo, Táctiles), Lógicos y matemáticos, filosóficos , sociales (intrapersonal, interpersonal).
Estos recuerdos además tienen atributos que indican si fueron ideas o vivencias propias de una persona, o son originarias de la experiencia (recuerdo) directo de otra persona.
La persona puede clasificar su recuerdo como bueno o malo además de agregarle una emoción (según la rueda de las emociones de Robert Plutchikde) de lo que significó dicha vivencia en el tiempo en que transcurrió, y lo que significa el día de hoy.
Todo recuerdo que pueda tener una persona debe poder ser clasificable en una línea de tiempo aproximada construida por la propia persona o su entorno, en este caso, más de un usuario puede aportar eventos a la línea de tiempo del otro usuario y viceversa.
Los recuerdos de los usuarios tienen una cobertura que puede clasificarse en mundial, continental, nacional, regional, y local, ejemplo de ello son: un evento astronómico, un terremoto, un temporal, un atardecer distintivo, un conflicto social… etc
Los eventos que recuerda una persona, no son conocidos necesariamente al mismo tiempo en que sucede un evento, por ejemplo, una persona que nace a inicios del 2000 no toma conciencia del derribo de las torres gemelas hasta que cumple 5 o más años, dependiendo si el hecho le es relevante o no, por lo que se debe almacenar de forma estimativa, cuando la persona cree que se enteró del evento, de forma independiente a cuando sucedió realmente.
Todas las historias o recuerdos generados por un usuario, pueden ser corroborados por uno o más usuarios.
El usuario, puede además agregar su árbol genealógico incorporando antecedentes de sus padres, abuelos, bisabuelos … etc.
El contenido de un recuerdo puede incluir uno o más de los siguientes elementos: un video, una canción, una fotografía, una posición geográfica, un periodo de tiempo o fecha específica, una descripción textual o una descripción narrada.
Los recuerdos no son de libre acceso entre los usuarios a menos que yo etiquete, o genere un  recuerdo compartido de un usuario conocido.
Finalmente el usuario puede consultar sus recuerdos por periodos, o grupos de acontecimientos.
