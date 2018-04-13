<html>

	<head>
		
		<meta charset="UTF-8" />
		<title> Federación Cántabra de Baloncesto </title>
		<link rel="stylesheet" href="css/estilos.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />

	</head>

	<body>

		<!-- header -->
		<?php include 'componentes/header.php'; ?>
		
		<!-- nav -->
		<?php include 'componentes/nav.php'; ?>

		<!-- slider y agenda -->
		<?php  include 'componentes/slider.php'; ?>
		<?php  include 'componentes/agenda.php'; ?>


		<!-- aside -->
		<?php include 'componentes/aside.php'; ?>
		


		<article class="col-8">

			<div id="noticias" class="col-16">
				
	        	<?php

	        	$cuenta = count($noticias);
	        	if($cuenta > 1){

			        foreach($noticias as $noticia){
			            echo "<div class='noticia col-8'>";
			            echo "<h3>".$noticia['titulo']."</h3>";
			            echo "<h5>".$noticia['subtitulo']."</h5>";
			            echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$noticia['texto']."</p>";
			            echo "</div>";
			        } 
		        }else{
		        	echo "NO HAY NOTICIAS";
		        }
		        ?>

		    

	    	</div>

   		</article>

		<!-- <footer></footer>r -->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>