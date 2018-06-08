<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto </title>
		<link rel="stylesheet" href="css/estilos.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
	</head>

	<body onload="play()">

		<!-- header -->
		<?php //include 'componentes/header.php'; ?>

		<?php /*var_dump($_SESSION);*/ if(isset($_SESSION['idusuario']) == false){?>
		<header class="offset-3 col-10">
			<div id="logo" class="col-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="col-7">

				<form  method="post">

					<input type="text" name="nombre" placeholder="Usuario">
					<input type="text" name="contrasenia" placeholder="Contraseña">
					<input type="submit" name="botonLogin" value="Entrar">

				</form>


			</div>
		</header>


		<?php }else{ ?>

		<header class="offset-3 col-10">
			<div id="logo" class="col-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="col-7">

				<?php echo "hola ". $_SESSION['nombre']." ".$_SESSION['apellido']; ?>
				<a href="index.php?option=logout"><i class='fas fa-power-off'></i>cerrar sesión</a>

			</div>
		</header>

		<?php } ?>



		
		<!-- nav -->
		<?php  include 'componentes/nav.php'; ?>

		<!-- slider y agenda -->
		<?php  include 'componentes/slider.php'; ?>
		<?php  include 'componentes/agenda.php'; ?>

		<!-- aside -->
		<?php  include 'componentes/aside.php'; ?>
		
		<article class="col-8">

			<div id="noticias" class="col-16">
				
	        	<?php

		        foreach($noticias as $noticia){
		        	//cortar texto para que sean iguales todas
		        	$textoCortado = substr($noticia['texto'],0,400);
		            echo "<div class='noticia col-8'>";
		            echo "<h3>".$noticia['titulo']."</h3>";
		            echo "<h5>".$noticia['subtitulo']."</h5>";
		            //echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$noticia['texto']."</p>";
		            echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$textoCortado."<a href='#'>...</a></p>";		      
		            echo "</div>";
		        } ?>

		    

	    	</div>

   		</article>



		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



