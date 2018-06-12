<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('clubes','noticias_clubes');


include 'views/noticiasClubes_view.php';
?>