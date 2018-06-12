<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('clubes','nuestros_clubes');


include 'views/nuestrosClubes_view.php';
?>