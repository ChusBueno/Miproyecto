<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('selecciones','cadetes_selecciones');


include 'views/cadetes_view.php';
?>