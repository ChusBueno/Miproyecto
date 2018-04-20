<?php

include 'cms/models/usuarios_model.php';

$usuarios = usuariosModel::usuarios();

include 'cms/views/usuarios_view.php';


?>