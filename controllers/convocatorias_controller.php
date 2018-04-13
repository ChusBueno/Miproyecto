<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('selecciones','convocatorias_selecciones');


include 'views/convocatorias_view.php';
?>