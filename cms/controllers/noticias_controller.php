<?php

include 'cms/models/noticias_model.php';

$categorias = noticiasModel::categorias();

$categorias_id = filter_input(INPUT_POST, 'categorias_id');

$noticiasRedactor = noticiasModel::noticiasRedactor($_SESSION['idusuario']);



if(isset($_POST['buscar'])){

		$categoria_id = $_POST['categorias'];
		$subcategoria_id = $_POST['subcategorias'];


		//echo "los valores son: ". $categoria_id . " ". $subcategoria_id;
		

		$noticias = noticiasModel::noticiasCategoria($categoria_id,$subcategoria_id);
	

}




//Borrar Noticias
if (isset($_GET['borrarNoticia'])){


	//id noticia
 	$borrar = $_GET['borrarNoticia'];

}


//boton aceptar borrar

if (isset($_POST['borrarNoticia'])){

	$id = $_POST['idBorrar'];

	$borrar = noticiasModel::borrarNoticia($id);

	if($borrar == 1){
		echo "Noticia borrada";
	}else{
		echo "Error, no se ha podido borrar la noticia!";
	}

	header("Refresh:2; url= admin.php?option=noticias");



}

//boton cancelar modal borrar

if(isset($_POST['cancelarBorrar'])){

	header("Refresh:2; url= admin.php?option=noticias");

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
	//$imagen = $_POST['imagenEditar'];

	$imagen = null;

	//echo "Valor del textarea: ".$texto."<br>Valor de imagen: ".$imagen;

	$editar = noticiasModel::editarNoticia($id,$id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen);

	if($editar == 1){
		echo "noticia editada";
	}else{
		echo "Error, no se ha podido editar la noticia!";
	}
	

	header("Refresh:2; url= admin.php?option=noticias");


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
	//$imagen = $_POST['imagenEditar'];

	$imagen = null;


	$insertar = noticiasModel::insertarNoticia($id_usuario,$id_categoria,$id_subcategoria,$titulo,$subtitulo,$texto,$fecha,$imagen);

	if($insertar == 1){
		echo "Nueva noticia añadida";
	}else{
		echo "No se ha añadido la noticia!";
	}

	header("Refresh:2; url= admin.php?option=noticias");



}





include 'cms/views/noticias_view.php';


?>