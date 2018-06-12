<?php

include 'cms/models/patrocinadores_model.php';

$patrocinadores = patrocinadoresModel::patrocinadores();


//para comprobar que es administrador, en caso de q cambien la url

if($_SESSION['permiso'] != "Administrador"){

	session_destroy();
	header("Location: admin.php");

}



/*CREAR PATROCINADOR*/


if(isset($_POST['crearPatrocinador'])){

//recoger datos


	$id_usuario = $_SESSION['idusuario'];

	//recoger datos input
	$nombre = $_POST['nombre'];
	$url = $_POST['url'];


	$imagen = $_FILES["fichero"]["name"];

	/*comprobacion imagen y mover imagen */
	if (file_exists("css/imagenes/patrocinadores/" . $_FILES["fichero"]["name"])){
		echo "Ya existe una imagen con ese nombre";
	}else{
		move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/patrocinadores/".$_FILES['fichero']['name']);
	}

	//insercion

	$insertar = patrocinadoresModel::insertarPatrocinador($nombre,$url,$imagen);

	/*
	if($insertar == 1){
		echo "Nuevo patrocinador añadido";
	}else{
		echo "No se ha añadido el patrocinador!";
	}

	*/



	header("Refresh:1; url= admin.php?option=patrocinadores");


 


}



/*EDITAR PATROCINADOR*/



if(isset($_GET['editar'])){
	//recoger id usuario de la ruta
	$patrocinador = $_GET['editar'];
	$datosPatrocinador = patrocinadoresModel::datosPatrocinador($patrocinador);

}




if(isset($_POST['EditarPatrocinador'])){

	
	//recogida datos
	$id = $_POST['id'];

	$nombre = $_POST['nombreEditar'];

	$url = $_POST['urlEditar'];

	$imagen = $_FILES["fichero"]["name"];

	//nombre imagen viejo
	$datos = patrocinadoresModel::datosPatrocinador($id);

	$nombreImagen = $datos['imagen'];


	/*comprobacion imagen y mover imagen */
	if (file_exists("css/imagenes/patrocinadores/" . $_FILES["fichero"]["name"])){
		//echo "Ya existe una imagen con ese nombre";
	}else{
		//si se sube una imagen nueva, borrar la anterior
		unlink('css/imagenes/patrocinadores/'.$nombreImagen);
		move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/patrocinadores/".$_FILES['fichero']['name']);
	}

	//edicion
	$editar = patrocinadoresModel::editarPatrocinador($id,$nombre,$url,$imagen);

	/*
	if($editar == 1){
		echo "Patrocinador editado";
	}else{
		echo "Error, no se ha podido editar el patrocinador!";
	}

	*/
	

	header("Refresh:1; url= admin.php?option=patrocinadores");
	//header("Location: admin.php?option=patrocinadores");


}


//Borrar Patrocinadores
if (isset($_GET['borrar'])){


	//id patrocinador
 	$id = $_GET['borrar'];

}


//boton aceptar borrar

if (isset($_POST['borrarPatrocinador'])){

	$id = $_POST['idBorrar'];



	//para saber el nombre de la imagen, consulto los datos del patrocinador

	$datos = patrocinadoresModel::datosPatrocinador($id);

	$nombreImagen = $datos['imagen'];

	//borrar imagen directorio

	unlink('css/imagenes/patrocinadores/'.$nombreImagen);



	//borrado bd
	$borrar = patrocinadoresModel::borrarPatrocinador($id);
	/*
	if($borrar == 1){
		echo "Patrocinador borrado";
	}else{
		echo "Error, no se ha podido borrar el patrocinador!";
	}

	*/


	header("Refresh:1; url= admin.php?option=patrocinadores");



}

//boton cancelar modal borrar

if(isset($_POST['cancelarBorrar'])){

	header("Refresh:1; url= admin.php?option=patrocinadores");

}




include 'cms/views/patrocinadores_view.php';


?>