<?php 
include 'models/main_model.php';

//$noticias = modelMain::obtenNoticias('inicio','noticias_index');

//probando paginador


$numNoticias = modelMain::contarNoticias('selecciones','infantiles_selecciones');

$pagina = 1;


$numNoticiasMostrar = 6;
//redondeamos el numero 
//dividir numero noticias por el numero que quiero mostrar, da el numero de paginas totales
$numPaginas = ceil($numNoticias['COUNT(noticias.id)']/$numNoticiasMostrar);

//$prueba = modelMain::prueba(8);
//obtenemos las primeras 6 noticias 


//pagina = 1, pero en la base de datos empieza a contar desde 0
$noticias = modelMain::noticiasPaginador('selecciones','infantiles_selecciones',($pagina-1)*$numNoticiasMostrar,$numNoticiasMostrar);


if(isset($_GET['pag'])){
    $pagina = $_GET['pag'];
    $noticias = modelMain::noticiasPaginador('selecciones','infantiles_selecciones',($pagina-1)*$numNoticiasMostrar,$numNoticiasMostrar);
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



if(isset($_GET['verNoticia'])){
    //recoger id usuario de la ruta
    $idnoticia = $_GET['verNoticia'];
    $datosNoticia = modelMain::datosNoticia($idnoticia);

    $comentarios = modelMain::comentariosNoticia($idnoticia);

    include 'views/NoticiaIndividual_view.php';


}else{
    include 'views/infantiles_view.php';
}


if(isset($_POST['enviarComentario'])){


    //recoger datos

    $idnoticia = $_GET['verNoticia'];

    $idusuario = $_SESSION['idusuario'];

    $texto = $_POST['texto'];

    $fecha = date("Y-m-d"); 

    $host= $_SERVER["HTTP_HOST"];
    $uri= $_SERVER["REQUEST_URI"];
    $url= "http://" . $host . $uri;

    
    //insertar
    if($texto != ''){
        $insertar = modelMain::insertarComentario($idnoticia,$idusuario,$texto,$fecha);
        header("location:".$url);
    }else{
        echo "El comentario no puede estar vacio";
    }
    


}


if (isset($_GET['borrarComentario'])){


    //id patrocinador
    $id_comentario = $_GET['borrarComentario'];

    $borrar = modelMain::borrarComentario($id_comentario);

    //echo "filas afectadas: ".$borrar;

    $url =  $_SERVER['QUERY_STRING'];

    //corta el string, convirtiendolo en un array, a partir de la ocurrencia
    $cortada = explode("&",$url);

    $urlbuena = $cortada[0]."&".$cortada[1];

   // echo "index.php?".$url;

    //echo "<br>En teoria url buena: <br>".$urlbuena;
    //echo "<br> Cortada: ".$cortada;


   // var_dump($cortada);

   header("Refresh:1; url= index.php?".$urlbuena."");
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


?>