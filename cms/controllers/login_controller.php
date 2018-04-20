<?php 
include 'cms/models/login_model.php';


$error = '';

if (isset($_POST['entrar'])){
    $usuario = $_POST['usuario'];
    $password = $_POST['contrasenia'];
    $verifLogin = loginModel::verifLog($usuario,$password);
    if($verifLogin == 1){
    	//si el login es correcto guardo los datos del usuario en la sesion
    	$datos = loginModel::datosUsuario($usuario);

    	 //variables de sesion
    	$_SESSION['nombre'] = $datos[0]['nombre'];
    	$_SESSION['apellido'] = $datos[0]['apellido'];
    	$_SESSION['permiso'] = $datos[0]['descripcion'];


        header("Location: admin.php?option=inicio");
    }else{
        $error = "Has introducido mal tu usuario o tu contraseña";
    }

}


include 'cms/views/login_view.php';
?>