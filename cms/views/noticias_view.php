<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
	</head>

	<body>


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="noticias" class="col-13">

			
			<form method="post">
				<select name="permisos">
					<?php
					foreach($categorias as $categoria){
						echo "<option value=".$categoria['id'].">".$categoria['nombre']."</option>";
					}
					?>

				</select>

				<input type="submit" name="buscar" value="Buscar"/>
			</form>
		</div>


		<div id="resultado">



		</div>


		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>