# FastJobs
<!-- # FASTJOBS

# Package


<h1 align="center"><!--  -->
  <b> FastJobs </b>
  <br>
</h1>

<h4 align="center">Proyecto para encontrar empleados o aplicar a empleos desarrollado con  <a href="https://www.php.net/" target="_blank">PHP</a>.</h4>

<p align="center">
  <a href="https://github.com/gorilla/mux">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1200px-PHP-logo.svg.png"
         alt="php">

</a>

</p>
<p align="center">
  <a href="#requisitos">Requisitos</a> •
  <a href="#descargar">Descargar</a> •
  <a href="#postman">Postman</a> 

</p>

## REQUISITOS

*Las consultas permiten:
    - [x] Insertar
    - [x] Recuperar
* Caracteristicas

- Manejos en la base de datos

* Conexión a la base de datos.
* Captura de los datos e inserción de los mismo en la base dato

$conexion_empleador = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));
insertar_empleador($conexion_empleador);
function insertar_empleador($conexion_empleador){

    $nombreempleador =$_POST['nombreempleador'];
    $correoEmpleador = $_POST['correoempleador'];
    $tefelefonoEmpleador=$_POST['telefonoempleador'];
    $identificacionEmpleador=$_POST['identificacionempleador'];
    $direccionempleador=$_POST['direccionempleador'];
    $consulta_empleador = "INSERT INTO cuentas_empleador(nombreempleador, correoempleador, telefonoempleador, identificacionempleador, direccionempleador):}

    

```

## Descargar

Para descargar y compilar es necesario [Git](https://git-scm.com), SE RECOMIENDA EL USO DEL IDE [Visual Studio Code](https://code.visualstudio.com/)
Luego de clonarlo, es de suma importancia realizar paso 2 y 3.

```bash
# Paso 1: Clonar el repositorio
$ git clone https://github.com/SebastianCamargoGarcia/FastJobs

# Paso 2: Dependecias gorilla 
$ go get github.com/gorilla/mux

# Paso 3: Iniciar el servidor (Asegurarse que está en la ruta correcta del proyecto)
```

## Postman

Para realizar las consultas es recomendable el uso de [XAMPP], luego de haberle importado la base de datos [fastjobs.sql]
