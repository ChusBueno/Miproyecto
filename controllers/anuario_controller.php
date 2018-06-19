<?php 

include 'models/main_model.php';

include 'models/anuario_model.php';


$categorias = modelAnuario::categorias();
$ligas = modelAnuario::ligas();


if(isset($_POST['buscar'])){

    $categoria = $_POST['categorias'];
    $liga = $_POST['ligas'];
    $genero = $_POST['genero'];

    $relacion = modelAnuario::idRelacion($categoria, $liga,$genero);
   // var_dump($relacion);

    //echo $relacion['id'];
    $equipos = modelAnuario::sacarEquiposRelacion($relacion['id']);



}


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



if(isset($_POST['CrearCuenta'])){

//recoger datos

    $nombreUsuario = $_POST['nombreUsuario'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $contrasenia = $_POST['contrasenia'];
    $tlf = $_POST['tlf'];

    $insertar = modelMain::crearCuenta($nombreUsuario,$nombre,$apellido,$contrasenia,$tlf);


    if ($insertar == 1){

        ?>
        <script type="text/javascript">
            //alert("Cuenta creada");
            var respuesta = document.getElementById("respuesta");
            respuesta.classList.add("correcto");
            respuesta.innerHTML = "Cuenta creada!";   

        </script> <?php
    }else{
        ?>
        <script type="text/javascript">
            var respuesta = document.getElementById("respuesta");
            respuesta.classList.add("incorrecto");
            respuesta.innerHTML = "No se ha podido crear la cuenta!";
           
            
        </script>
        <?php
    }

    //var_dump($insertar);die;

    header("Refresh:2; url= index.php?option=main");



}


if(isset($_GET['verEquipo'])){
    //recoger id usuario de la ruta
    $idequipo = $_GET['verEquipo'];
    
    $equipo = modelAnuario::datosEquipo($idequipo);

    $jugadores = modelAnuario::sacarJugadores($idequipo);

    include 'views/vistaEquipo_view.php';


}else if(isset($_GET['verClub'])){
    //recoger id usuario de la ruta
    $idclub = $_GET['verClub'];
    
    $club = modelAnuario::datosClub($idclub);

    include 'views/vistaClub_view.php';


}else{
    include 'views/anuario_view.php';
}





    

?>