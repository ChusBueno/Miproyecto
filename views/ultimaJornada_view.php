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
		<?php  include 'componentes/agenda.php'; ?>

		<!-- aside -->
		<?php  include 'componentes/aside.php'; ?>
		
		<article class="col-8 col-lg-13 col-md-13 col-sm-16">

			<div id="jornada" class="col-16 col-lg-16 col-md-16 col-sm-16">
				

				<div class="jornada col-8 col-lg-8 col-md-8 col-sm-8">
					<a href="index.php?option=verpdf&nombre=resultescolares"><img src="css/imagenes/aside/resultados/resescolar.png"/></a>
				</div>

				<div class="jornada col-8 col-lg-8 col-md-8 col-sm-8">
					<a href="index.php?option=verpdf&nombre=resultfederados"><img src="css/imagenes/aside/resultados/resfederada.png"/></a>
				</div>

				<hr>

				<div class="jornada col-8 col-lg-8 col-md-8 col-sm-8">
					<a href="index.php?option=verpdf&nombre=resulteba"><img src="css/imagenes/aside/resultados/reseba.png"/></a>
				</div>

				<div class="jornada col-8 col-lg-8 col-md-8 col-sm-8">
					<a href="index.php?option=verpdf&nombre=resultprifem"><img src="css/imagenes/aside/resultados/resprifem.png"/></a>
				</div>
		    

	    	</div>

   		</article>



		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



