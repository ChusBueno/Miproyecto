<?php

include 'cms/models/noticias_model.php';

$categorias = noticiasModel::categorias();

$categorias_id = filter_input(INPUT_POST, 'categorias_id');




if(isset($_POST['buscar'])){

		$categoria_id = $_POST['categorias'];
		$subcategoria_id = $_POST['subcategorias'];


		//echo "los valores son: ". $categoria_id . " ". $subcategoria_id;
		

		$noticias = noticiasModel::noticiasCategoria($categoria_id,$subcategoria_id);
	

}

$noticiasRedactor = noticiasModel::noticiasRedactor($_SESSION['idusuario']);

include 'cms/views/noticias_view.php';


?>