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


    public static function insertarPatrocinador($nombre,$url,$imagen){
        $db = new database();
        $sql = 'INSERT INTO patrocinadores VALUES(NULL,:nombre ,:url, :imagen)';
        $params = array(
            ':nombre'   => $nombre,
            ':url'     => $url,
            ':imagen'     => $imagen
        );
        $db->query($sql, $params);
        $filas = $db->affectedRows(); 
        return $filas;
    }



    public static function editarPatrocinador($id,$nombre,$url,$imagen){
        $db = new database();
        $sql = 'UPDATE patrocinadores SET nombre = :nombre, url = :url, imagen = :imagen WHERE id = :id';
        $params = array(
            ':id' => $id,
            ':nombre'   => $nombre,
            ':url'     => $url,
            ':imagen'     => $imagen
        );
        $db->query($sql, $params);
        $filas = $db->affectedRows(); 
        return $filas;
    }


    public static function datosPatrocinador($id){
        $db = new database();
        $sql = "SELECT * FROM patrocinadores WHERE id = :id";
        $params = array(":id" => $id);
        $db->query($sql,$params);
        $patrocinador = $db->cargaFila();
        return $patrocinador;
    }





    public static function patrocinadoresPaginador($pagina,$limite){
        $db = new database();
        $sql = "SELECT * FROM patrocinadores LIMIT :pagina, :limite";
        $params = array(":pagina" => $pagina, ':limite' => $limite);
        $db->emulacionoff();
        $db->query($sql,$params);
        $patrocinadores = $db->cargaMatriz();
        return $patrocinadores;
    }


    public static function contarPatrocinadores(){
        $db = new database();
        $sql = 'SELECT COUNT(id) FROM patrocinadores';
        $db->query($sql);
        $cuenta = $db->cargaFila();
        return $cuenta;
    }





}


?>