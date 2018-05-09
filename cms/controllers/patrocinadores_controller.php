<?php

include 'cms/models/patrocinadores_model.php';

$patrocinadores = patrocinadoresModel::patrocinadores();


//para comprobar que es administrador, en caso de q cambien la url

if($_SESSION['permiso'] != "Administrador"){

	session_destroy();
	header("Location: admin.php");

}


//borrar patrocinador
if(isset($_GET['borrar'])){

	$id = $_GET['borrar'];

	$filas = patrocinadoresModel::borrarPatrocinador($id);

	//echo "filas afectadas: ".$filas;

	//recargamos la pagina

	header("location: admin.php?option=patrocinadores");

}


include 'cms/views/patrocinadores_view.php';


?>