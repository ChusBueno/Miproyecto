<?php
class loginModel{


    public static function verifLog($nombre, $password){
        $db = new database();
        //permiso distinto de 4, 4 es usuario normal
        $sql = 'SELECT * FROM usuarios WHERE nombreUsuario = :nombre AND contrasenia = :password AND id_permiso <> 4';
        $params = array(
            ':nombre'   => $nombre,
            ':password' => $password
        );
        $db->query($sql, $params);
        $filas= $db->affectedRows();
        
        return $filas;
    }

    public static function datosUsuario($nombre){
        $db = new database();
        $sql = "SELECT usuarios.id,usuarios.nombre,usuarios.apellido,permisos.descripcion FROM usuarios,permisos WHERE usuarios.nombreUsuario = :nombre AND usuarios.id_permiso = permisos.id";
        $params = array(":nombre" => $nombre);
        $db->query($sql,$params);

        $datos = $db->cargaMatriz();
        return $datos;
    }



}


?>
