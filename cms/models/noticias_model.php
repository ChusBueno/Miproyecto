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
        $sql = "SELECT * FROM noticias WHERE id_categoria = :idcategoria AND id_subcategoria = :idsubcategoria ORDER BY fecha DESC";
        $params = array(":idcategoria" => $id_categoria,
                        ":idsubcategoria" => $id_subcategoria);
        $db->query($sql,$params);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }

    public static function noticiasRedactor($id_usuario){
        $db = new database();
        $sql = "SELECT * FROM noticias WHERE id_usuario = :idusuario ORDER BY fecha DESC";
        $params = array(":idusuario" => $id_usuario);
        $db->query($sql,$params);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }


    public static function borrarNoticia($id_noticia){
        $db = new database();
        $sql = "DELETE FROM noticias WHERE id = :idnoticia";
        $params = array(":idnoticia" => $id_noticia);
        $db->query($sql,$params);
        $filas = $db->affectedRows();
        return $filas;

    }


        public static function datosNoticia($id_noticia){
        $db = new database();
        $sql = "SELECT * FROM noticias WHERE id = :idnoticia";
        $params = array(":idnoticia" => $id_noticia);
        $db->query($sql,$params);
        $noticia = $db->cargaFila();
        return $noticia;
    }


        public static function editarNoticia($id,$id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen){
        $db = new database();
        $sql = 'UPDATE noticias SET id_usuario = :idusuario, id_categoria = :idcategoria, id_subcategoria = :idsubcategoria, titulo = :titulo, subtitulo = :subtitulo, texto = :texto, fecha = :fecha, imagen = :imagen WHERE id = :id';
        $params = array(
            ':id' => $id,
            ':idusuario'   => $id_usuario,
            ':idcategoria'     => $id_categoria,
            ':idsubcategoria'     => $id_subcategoria,
            ':titulo'    => $titulo,
            ':subtitulo' => $subtitulo,
            ':texto' => $texto,
            ':fecha'=>$fecha,
            ':imagen'=>$imagen
        );
        $db->query($sql, $params);
        $filas = $db->affectedRows(); 
        return $filas;
    }


    public static function insertarNoticia($id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen){
        $db = new database();
        $sql = 'INSERT INTO noticias VALUES(NULL,:idusuario ,:idcategoria, :idsubcategoria,:titulo, :subtitulo, :texto, :fecha, :imagen)';
        $params = array(
            ':idusuario'   => $id_usuario,
            ':idcategoria'     => $id_categoria,
            ':idsubcategoria'     => $id_subcategoria,
            ':titulo'    => $titulo,
            ':subtitulo' => $subtitulo,
            ':texto' => $texto,
            ':fecha'=>$fecha,
            ':imagen'=>$imagen
        );
        $db->query($sql, $params);
        $filas = $db->affectedRows(); 
        return $filas;
    }




}


?>