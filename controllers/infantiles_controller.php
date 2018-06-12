<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('selecciones','infantiles_selecciones');


include 'views/infantiles_view.php';
?>