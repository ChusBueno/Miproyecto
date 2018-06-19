<?php
class modelAnuario{


    public static function categorias(){
        $db = new database();
        $sql = "SELECT * FROM anuario_categorias";
        $db->query($sql);

        $datos = $db->cargaMatriz();
        return $datos;
    }


    public static function ligas(){
        $db = new database();
        $sql = "SELECT * FROM anuario_ligas";
        $db->query($sql);

        $datos = $db->cargaMatriz();
        return $datos;
    }


/*cuando seleccione categoria y liga hacemos consulta a la tabla relacion ligas-categorias*/
    public static function idRelacion($categoria,$liga,$genero){
        $db = new database();
        $sql = "SELECT * FROM anuario_relacion WHERE id_categoria = :categoria AND id_liga = :liga AND genero = :genero";
        $params = array(
            ':categoria'   => $categoria,
            ':liga'     => $liga,
            ':genero' => $genero
        );
        $db->query($sql,$params);
        $datos = $db->cargaFila();
        return $datos;
    }

    /*consulta para sacar los equipos pertenecientes a esa liga. id relacion categorias-ligas */

    public static function sacarEquiposRelacion($id_relacion){
        $db = new database();
        $sql = "SELECT anuario_equipos.id,anuario_equipos.id_club,anuario_equipos.nombre,anuario_equipos.imagen, anuario_equipos.entrenador, anuario_equipos.pabellon, anuario_clubes.nombreclub FROM anuario_equipos,anuario_clubes WHERE id_relacion = :id_relacion AND anuario_equipos.id_club = anuario_clubes.id";
        $params = array(
            ':id_relacion'   => $id_relacion
        );
        $db->query($sql,$params);
        $datos = $db->cargaMatriz();
        return $datos;
    }


    public static function datosEquipo($id){
        $db = new database();
        $sql = "SELECT * FROM anuario_equipos WHERE id = :id";
        $params = array(
            ':id'   => $id
        );
        $db->query($sql,$params);
        $datos = $db->cargaFila();
        return $datos;
    }



    public static function sacarJugadores($id_equipo){
        $db = new database();
        $sql = "SELECT * FROM anuario_jugadores WHERE id_equipo = :id_equipo";
        $params = array(
            ':id_equipo'  => $id_equipo
        );
        $db->query($sql,$params);
        $datos = $db->cargamatriz();
        return $datos;
    }


    public static function datosClub($id){
        $db = new database();
        $sql = "SELECT * FROM anuario_clubes WHERE id = :id";
        $params = array(
            ':id'   => $id
        );
        $db->query($sql,$params);
        $datos = $db->cargaFila();
        return $datos;
    }
















}


?>
