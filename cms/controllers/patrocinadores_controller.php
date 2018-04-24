<?php

include 'cms/models/patrocinadores_model.php';

$patrocinadores = patrocinadoresModel::patrocinadores();




include 'cms/views/patrocinadores_view.php';


?>