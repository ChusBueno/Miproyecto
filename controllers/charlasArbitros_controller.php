<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('arbitros','charlas_arbitros');


include 'views/charlasArbitros_view.php';
?>