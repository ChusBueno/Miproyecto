<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('selecciones','alevines_selecciones');


include 'views/alevines_view.php';
?>