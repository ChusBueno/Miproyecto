<?php

include 'cms/models/usuarios_model.php';

$usuarios = usuariosModel::usuarios();
$permisos = usuariosModel::permisos();

//para comprobar que es administrador, en caso de q cambien la url

if($_SESSION['permiso'] != "Administrador"){

	session_destroy();
	header("Location: admin.php");

}

if (isset($_POST['buscar'])){


	//echo "HAS DADO AL BOTON BUSCAR";

	$selected = $_POST['permisos'];

	//echo "$selected";

	$usuariosNivel = usuariosModel::usuariosNivel($selected);





}



if(isset($_POST['CrearUsuario'])){

//recoger datos

	$nombreUsuario = $_POST['nombreUsuario'];
	$nombre = $_POST['nombre'];
	$apellido = $_POST['apellido'];
	$contrasenia = $_POST['contrasenia'];
	$tlf = $_POST['tlf'];
	$permiso = $_POST['permisosGuardar'];

	$insertar = usuariosModel::insertarUsuario($nombreUsuario,$nombre,$apellido,$contrasenia,$tlf,$permiso);

	if($insertar == 1){
		echo "Nuevo usuario añadido";
	}else{
		echo "No se ha añadido el usuario. Nombre de usuario repetido!";
	}

	header("Refres:2; url= admin.php?option=usuarios");



}





if(isset($_GET['editarUsuario'])){

	$usuario = $_GET['editarUsuario'];

	$datosUsuario = usuariosModel::datosUsuario($usuario);

	//var_dump($datosUsuario);

}


//Borrar Usuarios
if (isset($_GET['borrarUsuario'])){

 	$borrar = $_GET['borrarUsuario'];
	echo "antes de borrar: ". $borrar;
	$filas = usuariosModel::borrarUsuario($borrar);
	


	//recargamos pagina
echo "<br>filas afectadas: ".$filas;

//header("location: admin.php?option=usuarios");
header("Refresh:2; url= admin.php?option=usuarios");

}


include 'cms/views/usuarios_view.php';


?>