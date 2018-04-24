<?php

class patrocinadoresModel{


    public static function patrocinadores(){
        $db = new database();
        $sql = "SELECT * FROM patrocinadores";
        $db->query($sql);
        $patrocinadores = $db->cargaMatriz();
        return $patrocinadores;
    }




}


?>