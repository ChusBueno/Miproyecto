<?php 

include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('entrevistas','entrenadores_entrevistas');


include 'views/entrenadoresEntrevistas_view.php';
?>