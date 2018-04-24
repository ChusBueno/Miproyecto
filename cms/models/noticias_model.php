<?php

class noticiasModel{


    public static function usuarios(){
        $db = new database();
        $sql = "SELECT usuarios.nombreUsuario, usuarios.nombre, usuarios.apellido,usuarios.telefono,permisos.descripcion from usuarios,permisos WHERE usuarios.id_permiso = permisos.id order by usuarios.id";
        $db->query($sql);
        $usuarios = $db->cargaMatriz();
        return $usuarios;
    }

    public static function categorias(){
    	$db = new database();
        $sql = "SELECT * FROM categorias";
        $db->query($sql);
        $categoria = $db->cargaMatriz();
        return $categoria;
    }

    public static function usuariosNivel($id_permiso){
    	$db = new database();
        $sql = "SELECT * FROM usuarios WHERE id_permiso = :idpermiso";
        $params = array(":idpermiso" => $id_permiso);
        $db->query($sql,$params);
        $permiso = $db->cargaMatriz();
        return $permiso;
    }

    public static function noticiasCategoria($id_categoria,$id_subcategoria){
        $db = new database();
        $sql = "SELECT * FROM noticias WHERE id_categoria = :idcategoria AND id_subcategoria = :idsubcategoria";
        $params = array(":idcategoria" => $id_categoria,
                        ":idsubcategoria" => $id_subcategoria);
        $db->query($sql,$params);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }




}


?>