<?php

include 'cms/models/noticias_model.php';

$categorias = noticiasModel::categorias();


include 'cms/views/noticias_view.php';


?>