<?php

class usuariosModel{


    public static function usuarios(){
        $db = new database();
        $sql = "SELECT usuarios.nombreUsuario, usuarios.nombre, usuarios.apellido,usuarios.telefono,permisos.descripcion from usuarios,permisos WHERE usuarios.id_permiso = permisos.id order by usuarios.id";
        $db->query($sql);
        $usuarios = $db->cargaMatriz();
        return $usuarios;
    }

    public static function permisos(){
    	$db = new database();
        $sql = "SELECT * FROM permisos";
        $db->query($sql);
        $permiso = $db->cargaMatriz();
        return $permiso;
    }

    public static function usuariosNivel($id_permiso){
    	$db = new database();
        $sql = "SELECT * FROM usuarios WHERE id_permiso = :idpermiso";
        $params = array(":idpermiso" => $id_permiso);
        $db->query($sql,$params);
        $permiso = $db->cargaMatriz();
        return $permiso;
    }


    public static function borrarUsuario($id_usuario){
        $db = new database();
        $sql = "DELETE FROM usuarios WHERE id = :idusuario";
        $params = array(":idusuario" => $id_usuario);
        $db->query($sql,$params);
        $usuario = $db->affectedRows();
        return $usuario;
    }



}


?>