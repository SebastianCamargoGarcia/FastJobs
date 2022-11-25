<?php
   $conexion = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));

   Consulta_Datos($conexion);
   function Consulta_Datos($conexion){
       
    $usuario = $_POST['usuario'];
    $contraseña = $_POST['contraseña'];
   
   $consulta = "SELECT*FROM inicio where usuario='$usuario' and contraseña='$contraseña'";
   $resultado= mysqli_query($conexion, $consulta);
   $filas=mysqli_num_rows($resultado);
   if($filas){
    header("location:index.html");
   }else{

     include("user-login.html");

     echo "Error de datos";

   }
   mysqli_close($conexion);
   }
?>
