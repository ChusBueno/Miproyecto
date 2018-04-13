<?php
class modelMain{

    //OBTENER noticias a traves del nombre de la categoria y de la subcategoria
    public static function obtenNoticias($categoria,$subcategoria){
        $db = new database();
        //el 1 corresponde a las noticias del index

        //consulta SQL
        /*
        select noticias.titulo,noticias.subtitulo,noticias.fecha,noticias.imagen from noticias,categorias,subcategorias WHERE categorias.nombre = 'slider' AND subcategorias.nombre = 'noticias_slider' AND noticias.id_categoria = categorias.id AND noticias.id_subcategoria = subcategorias.id 
        */

        $sql = 'SELECT noticias.titulo, noticias.subtitulo, noticias.texto, noticias.fecha, noticias.imagen FROM noticias,categorias,subcategorias WHERE categorias.nombre = :categoria_nombre AND subcategorias.nombre = :subcategoria_nombre AND noticias.id_categoria = categorias.id AND noticias.id_subcategoria = subcategorias.id LIMIT 6';
        $params = array(
            ':categoria_nombre'   => $categoria,
            ':subcategoria_nombre' => $subcategoria
        );
        $db->query($sql,$params);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }



}


?>
