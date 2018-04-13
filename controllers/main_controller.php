<?php 
include 'models/main_model.php';

$noticias = modelMain::obtenNoticias('inicio','noticias_index');


include 'views/main_view.php';
?>