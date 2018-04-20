<?php

class usuariosModel{


    public static function usuarios(){
        $db = new database();
        $sql = "SELECT usuarios.nombreUsuario, usuarios.nombre, usuarios.apellido,usuarios.telefono,permisos.descripcion from usuarios,permisos WHERE usuarios.id_permiso = permisos.id order by usuarios.id";
        $db->query($sql);
        $usuarios = $db->cargaMatriz();
        return $usuarios;
    }



}


?>