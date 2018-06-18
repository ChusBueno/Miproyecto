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

			echo '<embed src="css/pdfs/'.$nombrePdf.'.pdf" width="100%" height="100%" alt="pdf">';

		    
			?>
	    	</div>

   		</article>


		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



