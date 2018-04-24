<?php

	include '../librerias/conexionpdo.php';


	//recoger dato de ajax
	$categoria_id = filter_input(INPUT_POST, 'categoria_id');



	function subcategorias_id($categoria_id){
	    $db = new database();
	    $sql = "SELECT * FROM subcategorias WHERE id_categoria = :idcategoria";
	    $params = array(":idcategoria" => $categoria_id);
	    $db->query($sql,$params);
	    $subcategorias = $db->cargaMatriz();
	    return $subcategorias;

	}

	$subcategorias = subcategorias_id($categoria_id);


?>

	<option value="">- Seleccione -</option>
	<?php foreach($subcategorias as $op): //creamos las opciones a partir de los datos obtenidos ?>
	<option value="<?= $op['id'] ?>"><?= $op['nombre'] ?></option>
	<?php endforeach; ?>

