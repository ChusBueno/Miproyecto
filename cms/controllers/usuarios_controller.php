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
	/*
	if($insertar == 1){
		echo "Nuevo usuario añadido";
	}else{
		echo "No se ha añadido el usuario. Nombre de usuario repetido!";
	}
	*/
	header("Refresh:2; url= admin.php?option=usuarios");



}





if(isset($_GET['editarUsuario'])){
	//recoger id usuario de la ruta
	$usuario = $_GET['editarUsuario'];
	$datosUsuario = usuariosModel::datosUsuario($usuario);
	//boton submit del modal editar

}

if(isset($_POST['EditarUsuario'])){

	

	//var_dump($datosUsuario);

	//identificador para el update

	$id = $_POST['idEditar'];

	//recoger datos input
	$nombreUsuario = $_POST['nombreUsuarioEditar'];
	$nombre = $_POST['nombreEditar'];
	$apellido = $_POST['apellidoEditar'];
	$contrasenia = $_POST['contraseniaEditar'];
	$tlf = $_POST['tlfEditar'];
	$permiso = $_POST['permisosEditar'];

	$editar = usuariosModel::editarUsuario($id,$nombreUsuario,$nombre,$apellido,$contrasenia,$tlf,$permiso);
	/*
	if($editar == 1){
		echo "Usuario editado";
	}else{
		echo "Error, no se ha podido editar el usuario!";
	}
	*/
	header("Refresh:1; url= admin.php?option=usuarios");
}



//Borrar Usuarios
if (isset($_GET['borrarUsuario'])){


	//id del usuario
 	$id = $_GET['borrarUsuario'];

}


//boton aceptar borrar

if (isset($_POST['borrarUsuario'])){

	$id = $_POST['idBorrar'];

	$borrar = usuariosModel::borrarUsuario($id);

	/*
	if($borrar == 1){
		echo "Usuario borrado";
	}else{
		echo "Error, no se ha podido borrar el usuario!";
	}
	*/
	header("Refresh:1; url= admin.php?option=usuarios");



}


//boton cancelar modal borrar

if(isset($_POST['cancelarBorrar'])){

	header("Refresh:1; url= admin.php?option=usuarios");

}


include 'cms/views/usuarios_view.php';


?>