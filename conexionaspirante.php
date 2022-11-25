<?php


//CONEXIÓN ASPIRANTES
$conexion = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));

insertar_aspirante($conexion);
function insertar_aspirante($conexion){
$correo = $_POST['correo'];
$identificacion = $_POST['identificacion'];
$nombre_apellido = $_POST['nombre_apellido'];
$direccion = $_POST['direccion'];
$ciudad = $_POST['ciudad'];
$telefono = $_POST['telefono'];
$nivel_estudio = $_POST['nivel_estudio'];
$carrera_estudiada= $_POST['carrera_estudiada'];
$portafolio= $_POST['portafolio'];
$algosobreti= $_POST['algosobreti'];

//$contraseña = $_POST['contraseña'];

$consulta = "INSERT INTO cuentas_aspirantes(correo, identificacion, nombre_apellido, direccion, ciudad, telefono, nivel_estudio, carrera_estudiada, portafolio, algosobreti)
VALUES ('$correo', '$identificacion', '$nombre_apellido', '$direccion', '$ciudad', '$telefono', '$nivel_estudio', '$carrera_estudiada','$portafolio', '$algosobreti')";

mysqli_query($conexion, $consulta);
mysqli_close($conexion);
header("Location:job-list.php");

}


?>