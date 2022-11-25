<?php
//CONEXCIÓN EMPLEADOR
$conexion_empleador = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));
insertar_empleador($conexion_empleador);
function insertar_empleador($conexion_empleador){

    $nombreempleador =$_POST['nombreempleador'];
    $correoEmpleador = $_POST['correoempleador'];
    $tefelefonoEmpleador=$_POST['telefonoempleador'];
    $identificacionEmpleador=$_POST['identificacionempleador'];
    $direccionempleador=$_POST['direccionempleador'];
    
$consulta_empleador = "INSERT INTO cuentas_empleador(nombreempleador, correoempleador, telefonoempleador, identificacionempleador, direccionempleador)
VALUES ('$nombreempleador', '$correoEmpleador', '$tefelefonoEmpleador', '$identificacionEmpleador', '$direccionempleador')";
mysqli_query($conexion_empleador, $consulta_empleador);
mysqli_close($conexion_empleador);
}

//CONEXIÓN OFERTA_EMPLEO
class Database {

    private $hostname ="localhost";
    private $database ="fastjobs";
    private $username ="root";
    private $password ="";
    private $charset ="utf8";
    
    
    function conectar(){
    try{
    $conexion ="mysql:host=".$this->hostname.";dbname=".$this->database.";charset=".$this->charset;
    
    $options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_EMULATE_PREPARES => false
    ];
    
    $pdo = new PDO($conexion, $this->username, $this->password, $options);
    
    return $pdo;
    }catch(PDOException $e){
        echo 'Error conexion: ' . $e->getMessage();
        exit;
    }
}
}
$conexion_oferta = mysqli_connect('localhost', 'root', '', 'fastjobs') or die(mysql_error($mysqli));
insertar_oferta($conexion_oferta);
function insertar_oferta($conexion_oferta){

    $nombre_oferta =$_POST['nombre_oferta'];
    $tiempo = $_POST['tiempo'];
    $sueldo=$_POST['sueldo'];
    $fecha=$_POST['fecha'];
    $ciudad=$_POST['ciudad'];
    $requisitos=$_POST['requisitos'];
    
$consulta_oferta = "INSERT INTO ofertasempleo(nombre_oferta, tiempo, sueldo, ciudad, fecha, requisitos)
VALUES ('$nombre_oferta', '$tiempo', '$sueldo', '$ciudad', '$fecha', '$requisitos')";
mysqli_query($conexion_oferta, $consulta_oferta);
mysqli_close($conexion_oferta);
header("Location:job-list.php");
}

?>