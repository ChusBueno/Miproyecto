<?php
class modelMain{

    //OBTENER noticias a traves del nombre de la categoria y de la subcategoria
    public static function obtenNoticias($categoria,$subcategoria){
        $db = new database();

        $sql = 'SELECT noticias.id ,noticias.titulo, noticias.subtitulo, noticias.texto, noticias.fecha, noticias.imagen FROM noticias,categorias,subcategorias WHERE categorias.nombre = :categoria_nombre AND subcategorias.nombre = :subcategoria_nombre AND noticias.id_categoria = categorias.id AND noticias.id_subcategoria = subcategorias.id LIMIT 6';
        $params = array(
            ':categoria_nombre'   => $categoria,
            ':subcategoria_nombre' => $subcategoria
        );
        $db->query($sql,$params);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }


        public static function verifLog($nombre, $password){
        $db = new database();
        $sql = 'SELECT * FROM usuarios WHERE nombreUsuario = :nombre AND contrasenia = :password';
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

        $datos = $db->cargaFila();
        return $datos;
    }


    public static function datosNoticia($id){
        $db = new database();
        $sql = "SELECT * FROM noticias WHERE id = :id";
        $params = array(":id" => $id);
        $db->query($sql,$params);

        $datos = $db->cargaFila();
        return $datos;
    }


    public static function comentariosNoticia($id){
        $db = new database();
        $sql = "SELECT comentarios.id_noticia, comentarios.id_usuario, comentarios.texto, comentarios.fecha, usuarios.id, usuarios.nombreUsuario FROM comentarios,usuarios WHERE comentarios.id_noticia = :id AND comentarios.id_usuario = usuarios.id";
        $params = array(":id" => $id);
        $db->query($sql,$params);

        $datos = $db->cargaMatriz();
        return $datos;
    }








}


?>
