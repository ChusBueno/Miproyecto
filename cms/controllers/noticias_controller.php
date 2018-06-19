<?php

include 'cms/models/noticias_model.php';

$categorias = noticiasModel::categorias();

$categorias_id = filter_input(INPUT_POST, 'categorias_id');

$noticiasRedactor = noticiasModel::noticiasRedactor($_SESSION['idusuario']);



if(isset($_POST['buscar'])){

		$categoria_id = $_POST['categorias'];
		$subcategoria_id = $_POST['subcategorias'];

		

		$noticias = noticiasModel::noticiasCategoria($categoria_id,$subcategoria_id);


}



//Borrar Noticias
if (isset($_GET['borrarNoticia'])){


	//id noticia
 	$id = $_GET['borrarNoticia'];

}


//boton aceptar borrar

if (isset($_POST['borrarNoticia'])){

	$id = $_POST['idBorrar'];


	//para saber el nombre de la imagen, consulto los datos del patrocinador

	$datos = noticiasModel::datosNoticia($id);

	$nombreImagen = $datos['imagen'];

	//borrar imagen directorio

	unlink('css/imagenes/noticias/'.$nombreImagen);


	$borrar = noticiasModel::borrarNoticia($id);
	/*
	if($borrar == 1){
		echo "Noticia borrada";
	}else{
		echo "Error, no se ha podido borrar la noticia!";
	}
	*/
	header("Refresh:1; url= admin.php?option=noticias");



}

//boton cancelar modal borrar

if(isset($_POST['cancelarBorrar'])){

	header("Refresh:1; url= admin.php?option=noticias");

}


/*EDITAR NOTICIA*/



if(isset($_GET['editarNoticia'])){
	//recoger id usuario de la ruta
	$noticia = $_GET['editarNoticia'];
	$datosNoticia = noticiasModel::datosNoticia($noticia);

}




if(isset($_POST['EditarNoticia'])){

	
	
	//var_dump($datosUsuario);

	//identificador para el update

	$id = $_POST['idNoticia'];

	$id_usuario = $_SESSION['idusuario'];

	//recoger datos input
	$titulo = $_POST['tituloNoticiaEditar'];
	$subtitulo = $_POST['subtituloNoticiaEditar'];
	$id_categoria = $_POST['categoriasEditar'];
	$id_subcategoria = $_POST['subcategoriasEditar'];
	$texto = $_POST['textoEditar'];
	$fecha = date("Y-m-d"); 
	

	$imagen = $_FILES["fichero"]["name"];


	//nombre imagen viejo
	$datos = noticiasModel::datosNoticia($id);

	$nombreImagen = $datos['imagen'];

	//SI NO INSERTAN IMAGEN DEJAR LA VIEJA
	if( $_FILES["fichero"]["name"] == ''){
		$imagen = $datos['imagen'];
	}

	/*comprobacion imagen y mover imagen */
	//si existe la imagen no hago nada
	if (file_exists("css/imagenes/noticias/" . $_FILES["fichero"]["name"])){
		//echo "Ya existe una imagen con ese nombre";
	}else{
		//si se sube una imagen nueva, borrar la anterior
		unlink('css/imagenes/noticias/'.$nombreImagen);
		move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/noticias/".$_FILES['fichero']['name']);
	}



	$editar = noticiasModel::editarNoticia($id,$id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen);
	/*
	if($editar == 1){
		echo "noticia editada";
	}else{
		echo "Error, no se ha podido editar la noticia!";
	}
	*/
	
	header("Refresh:1; url= admin.php?option=noticias");


}



/*CREAR NOTICIA*/


if(isset($_POST['crearNoticia'])){

//recoger datos


	$id_usuario = $_SESSION['idusuario'];

	//recoger datos input
	$titulo = $_POST['tituloNoticia'];
	$subtitulo = $_POST['subtituloNoticia'];
	$id_categoria = $_POST['categoriasAnadir'];
	$id_subcategoria = $_POST['subcategoriasAnadir'];
	$texto = $_POST['texto'];
	$fecha = date("Y-m-d"); 

	$imagen = $_FILES["fichero"]["name"];


	/*comprobacion imagen y mover imagen */
	if (file_exists("css/imagenes/noticias/" . $_FILES["fichero"]["name"])){
		//echo "Ya existe una imagen con ese nombre";
	}else{
		move_uploaded_file($_FILES["fichero"]["tmp_name"], "css/imagenes/noticias/".$_FILES['fichero']['name']);
	}


	$insertar = noticiasModel::insertarNoticia($id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen);
	/*
	if($insertar == 1){
		echo "Nueva noticia añadida";
	}else{
		echo "No se ha añadido la noticia!";
	}
	*/
	header("Refresh:1; url= admin.php?option=noticias");



}





include 'cms/views/noticias_view.php';


?>