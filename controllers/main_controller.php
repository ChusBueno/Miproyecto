<?php 
include 'models/main_model.php';

$noticias = modelMain::obtenNoticias();


include 'views/main_view.php';
?>