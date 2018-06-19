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
				
				<form action="index.php?option=anuario" method="post">
					Categoria: <select name="categorias">
						<?php
						foreach($categorias as $categoria){
							echo "<option value=".$categoria['id'].">".$categoria['nombre']."</option>";
						}
						?>

					</select>

					Liga: <select name="ligas">
						<?php
						foreach($ligas as $liga){
							echo "<option value=".$liga['id'].">".$liga['nombre']."</option>";
						}
						?>

					</select>

					Genero : <select name="genero">
						<option value="masculino">Masculino</option>
						<option value="femenino">Femenino</option>

					<input type="submit" name="buscar" value="Buscar"/>
				</form>



				<?php
				//var_dump($equipos);
				if(isset($equipos)){
					

					foreach ($equipos as $equipo){
						echo "<div class='equipo col-8 col-lg-8 col-md-8 col-sm-8'>";
						echo  "<h3><a href='index.php?option=anuario&verEquipo=".$equipo['id']."'>".$equipo['nombre']."</a></h3>";
						echo "<p><a href='index.php?option=anuario&verEquipo=".$equipo['id']."'><img class='imagenEquipo' src='css/imagenes/anuario/equipos/".$equipo['imagen']."' /></a> Entrenador: ".$equipo['entrenador'];
						echo "<br>Pabellón: ".$equipo['pabellon'];
						echo "<br><a class='azul' href='index.php?option=anuario&verClub=".$equipo['id_club']."'>Club: ".$equipo['nombreclub']."</a></p>";
						echo "</div>";
					}


				}


				?>

		    

	    	</div>

   		</article>


		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



