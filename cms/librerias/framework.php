<?php
// BBDD

include 'cms/librerias/conexionpdo.php';

// Carga el controlador de un componente
function loader($componente){
	ob_start();
	//echo "Estoy llamando a: ". $componente."_controller.php";
	include 'cms/controllers/'.$componente.'_controller.php';
	$buffer = ob_get_clean();
	return $buffer;
}

// Inicio sesion	
session_start();

// Obtiene el nombre del componente solicitado si hay ($_GET['option']) o uno por defecto
if(isset($_GET['option'])){
    $componente = $_GET['option'];
} else {
    $componente = 'login';
}