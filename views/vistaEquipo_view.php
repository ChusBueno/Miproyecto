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

			<div id="equipo" class="col-16 col-lg-16 col-md-16 col-sm-16">
				<a class="volverAtras" href="index.php?option=anuario">&laquo; Volver atrás</a>
				<?php

				//var_dump($equipo);

				echo "<h3>".$equipo['nombre']."</h3>";


				//var_dump($jugadores);

				foreach ($jugadores as $jugador){

					echo "<div class='jugador col-4 col-lg-4 col-md-5 col-sm-8'>";
					echo "<a href='css/imagenes/anuario/jugadores/".$jugador['imagen']."'><img class='imagenJugador' src='css/imagenes/anuario/jugadores/".$jugador['imagen']."' /></a>";
					echo "<p>".$jugador['nombre']." ".$jugador['apellidos']."</p>";
					echo "<p>".$jugador['fecha']."</p>";
					echo "</div>";
					
				}


				echo "<a href='css/imagenes/anuario/equipos/".$equipo['imagen']."'><img class='imgequipo' src='css/imagenes/anuario/equipos/".$equipo['imagen']."'></a>";

				?>


	    	</div>




   		</article>



		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



