<?php 
include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('inicio','noticias_index');




if (isset($_POST['botonLogin'])){
    $usuario = $_POST['nombre'];
    $password = $_POST['contrasenia'];
    $verifLogin = modelMain::verifLog($usuario,$password);
    if($verifLogin == 1){
    	//si el login es correcto guardo los datos del usuario en la sesion
    	$datos = modelMain::datosUsuario($usuario);

    	 //variables de sesion
        $_SESSION['idusuario'] = $datos['id'];
    	$_SESSION['nombre'] = $datos['nombre'];
    	$_SESSION['apellido'] = $datos['apellido'];
    	$_SESSION['permiso'] = $datos['descripcion'];


    }else{
        $error = "Has introducido mal tu usuario o tu contraseña";
    }
	
}



include 'views/main_view.php';
?>