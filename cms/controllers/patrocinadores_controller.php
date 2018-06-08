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

	$insertar = patrocinadoresModel::insertarPatrocinador($nombre,$url,$imagen);
	
	if($insertar == 1){
		echo "Nuevo patrocinador añadido";
	}else{
		echo "No se ha añadido el patrocinador!";
	}

	header("Refresh:2; url= admin.php?option=patrocinadores");




/***************************PROBANDO****************/


echo $_FILES["fichero"]["name"];

move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/patrocinadores/".$_FILES['fichero']['name']);





//$nombreArchivo= $_FILES['fichero']['name'];
//echo "<br><br> <img src='css/imagenes/patrocinadores/$nombreArchivo'>";





/**********************************************************/
 


}



/*EDITAR PATROCINADOR*/



if(isset($_GET['editar'])){
	//recoger id usuario de la ruta
	$patrocinador = $_GET['editar'];
	$datosPatrocinador = patrocinadoresModel::datosPatrocinador($patrocinador);

}




if(isset($_POST['EditarPatrocinador'])){

	
	
	//var_dump($datosUsuario);

	//identificador para el update

	$id = $_POST['id'];

	$nombre = $_POST['nombreEditar'];

	$url = $_POST['urlEditar'];

	$imagen = $_FILES["fichero"]["name"];

	//echo "Valor del textarea: ".$texto."<br>Valor de imagen: ".$imagen;

	$editar = patrocinadoresModel::editarPatrocinador($id,$nombre,$url,$imagen);

	if($editar == 1){
		echo "Patrocinador editado";
	}else{
		echo "Error, no se ha podido editar el patrocinador!";
	}

/*falta añadir verificar q no exista el fichero*/
	move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/patrocinadores/".$_FILES['fichero']['name']);

	header("Refresh:1; url= admin.php?option=patrocinadores");


}


//Borrar Patrocinadores
if (isset($_GET['borrar'])){


	//id patrocinador
 	$id = $_GET['borrar'];

}


//boton aceptar borrar

if (isset($_POST['borrarPatrocinador'])){

	$id = $_POST['idBorrar'];

	$borrar = patrocinadoresModel::borrarPatrocinador($id);

	if($borrar == 1){
		echo "Patrocindor borrado";
	}else{
		echo "Error, no se ha podido borrar el patrocinador!";
	}

	header("Refresh:2; url= admin.php?option=patrocinadores");



}

//boton cancelar modal borrar

if(isset($_POST['cancelarBorrar'])){

	header("Refresh:2; url= admin.php?option=patrocinadores");

}




include 'cms/views/patrocinadores_view.php';


?>