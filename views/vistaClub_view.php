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

			<div id="anuario" class="col-16 col-lg-16 col-md-16 col-sm-16">
				<a class="volverAtras" href="index.php?option=anuario">&laquo; Volver atrás</a>
				<?php

				//var_dump($club);


				echo "<div class='club offset-3 col-10 offset-lg-3 col-lg-10 col-md-16 col-sm-16'>";
				echo  "<h3>".$club['nombreclub']."</h3>";
				echo "<p><img src='css/imagenes/anuario/equipos/".$club['imagen']."' /> Responsable: ".$club['responsable'];
				echo "<br>Localidad: ".$club['localidad']."</p>";
				echo "</div>";

				?>


	    	</div>




   		</article>



		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



