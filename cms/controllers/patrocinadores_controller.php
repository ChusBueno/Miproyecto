<?php

include 'cms/models/patrocinadores_model.php';

$patrocinadores = patrocinadoresModel::patrocinadores();


//para comprobar que es administrador, en caso de q cambien la url

if($_SESSION['permiso'] != "Administrador"){

	session_destroy();
	header("Location: admin.php");

}


include 'cms/views/patrocinadores_view.php';


?>