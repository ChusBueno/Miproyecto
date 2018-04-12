<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto </title>
		<link rel="stylesheet" href="css/estilos.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
	</head>

	<body onload="play()">

		<!-- header -->
		<?php include 'componentes/header.php'; ?>
		
		<!-- nav -->
		<?php  include 'componentes/nav.php'; ?>

		<!-- slider y agenda -->
		<?php  include 'componentes/slider.php'; ?>

		<!-- aside -->
		<?php  include 'componentes/aside.php'; ?>
		
		<article class="col-8">

			<div id="noticias" class="col-16">
				
	        	<?php

		        foreach($noticias as $noticia){
		            echo "<div class='noticia col-8'>";
		            echo "<h3>".$noticia['titulo']."</h3>";
		            echo "<h5>".$noticia['subtitulo']."</h5>";
		            echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$noticia['texto']."</p>";
		            echo "</div>";
		        } ?>

		    

	    	</div>

   		</article>



		<!-- footer-->
		<?php include 'componentes/footer2.php'; ?>

	</body>


</html>