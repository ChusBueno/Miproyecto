<?php 

include 'models/main_model.php';


if(isset($_GET['nombre'])){
    //recoger id usuario de la ruta
    $nombrePdf = $_GET['nombre'];

}


include 'views/verpdf_view.php';
?>