<?php

include 'cms/models/usuarios_model.php';

$usuarios = usuariosModel::usuarios();
$permisos = usuariosModel::permisos();


if (isset($_POST['buscar'])){


	//echo "HAS DADO AL BOTON BUSCAR";

	$selected = $_POST['permisos'];

	//echo "$selected";

	$usuariosNivel = usuariosModel::usuariosNivel($selected);





}


include 'cms/views/usuarios_view.php';


?>