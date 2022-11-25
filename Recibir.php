<?php
   $conexion = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));

   insertar_inicio($conexion);
   function insertar_inicio($conexion){
       
    $usuario = $_POST['usuario'];
    $contraseña = $_POST['contraseña'];
    $cargo = $_POST['cargo'];
   
   $consulta = "INSERT INTO inicio(usuario, contraseña, cargo)
   VALUES ('$usuario', '$contraseña', '$cargo')";
   
   mysqli_query($conexion, $consulta);
   mysqli_close($conexion);
   }
   header("Location:user-login.html");
   die();
   
?>
