<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('entrevistas','jugadores_entrevistas');


include 'views/jugadoresEntrevistas_view.php';
?>