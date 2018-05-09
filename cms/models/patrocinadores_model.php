<?php

class patrocinadoresModel{


    public static function patrocinadores(){
        $db = new database();
        $sql = "SELECT * FROM patrocinadores";
        $db->query($sql);
        $patrocinadores = $db->cargaMatriz();
        return $patrocinadores;
    }


    public static function borrarPatrocinador($id_patrocinador){

        $db = new database();
        $sql = "DELETE FROM patrocinadores WHERE id = :id";
        $params = array(":id" => $id_patrocinador);
        $db->query($sql,$params);
        $filas = $db->affectedRows();
        return $filas;


    }



}


?>