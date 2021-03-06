<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto </title>
		<link rel="stylesheet" href="css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.min.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="js/funciones.js"></script>
	</head>

	<body onload="play()">

		<!-- header -->
		<?php include 'componentes/header.php'; ?>

		
		<!-- nav -->
		<?php  include 'componentes/nav.php'; ?>

		<!-- slider y agenda -->
		<?php  include 'componentes/slider.php'; ?>
		<?php  include 'componentes/agenda.php'; ?>

		<!-- aside -->
		<?php  include 'componentes/aside.php'; ?>
		
		<article class="col-8 col-lg-13 col-md-13 col-sm-16">

			<div id="noticias" class="col-16 col-lg-16 col-md-16 col-sm-16">
				
	        	<?php

	        	//var_dump($noticias);

	        	//die;


	        	if(count($noticias)>0){

			        foreach($noticias as $noticia){
			        	//cortar texto para que sean iguales todas
			        	$textoCortado = substr($noticia['texto'],0,400);
			            echo "<div class='noticia col-8 col-lg-8 col-md-8 col-sm-16'>";

			            //<a href="admin.php?option=usuarios&editarUsuario='.$usuarioNivel['id'].'">
			            echo "<h3><a href='index.php?option=alevines&verNoticia=".$noticia['id']."'>".$noticia['titulo']."</a></h3>";
			            echo "<h5>".$noticia['subtitulo']."</h5>";
			            //echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$noticia['texto']."</p>";
			            echo "<p><a href='index.php?option=alevines&verNoticia=".$noticia['id']."'> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /></a> ".$textoCortado."...</p>";
			            echo "<a class='leerMas' href='index.php?option=alevines&verNoticia=".$noticia['id']."'>Leer más</a>";
			            echo "</div>";
			        
			        }

				}else{
			    	echo "No hay noticias";
			    }


			    //paginador
			    	echo "<div class='paginador'>";
				    for($i=0; $i<$numPaginas;$i++){
				       echo '<a href="index.php?option=alevines&pag='.($i+1).'">'.($i+1).'</a> | ';
				    } 
				    echo "</div>";



		         ?>

		    

	    	</div>

   		</article>


		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



