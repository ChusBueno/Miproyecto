<?php
class modelMain{
    public static function obtenNoticias(){
        $db = new database();
        //el 1 corresponde a las noticias del index
        $sql = 'SELECT * FROM noticias WHERE id_categoria = 1 AND id_subcategoria = 1 LIMIT 6';
        $db->query($sql);
        $noticias = $db->cargaMatriz();
        return $noticias;
    }



    public static function imgSlider(){
    	$db = new database();

        //el 1 corresponde a las noticias del index
        $sql = 'SELECT imagen FROM noticias WHERE id_categoria = 5 AND id_subcategoria = 10';
        $db->query($sql);
        $imagenes = $db->cargaMatriz();
        return $imagenes;
    }

}


?>
