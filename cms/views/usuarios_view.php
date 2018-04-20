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


		<div id="usuarios" class="col-13">
			<table class="col-16">
				<tr>
					<th>Nombre Usuario</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Telefono</th>
					<th>Permiso</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
			<?php

				foreach ($usuarios as $usuario){
					echo "<tr>";
					echo "<td>".$usuario['nombreUsuario']."</td>";
					echo "<td>".$usuario['nombre']."</td>";
					echo "<td>".$usuario['apellido']."</td>";
					echo "<td>".$usuario['telefono']."</td>";
					echo "<td>".$usuario['descripcion']."</td>";
					echo "<td>Boton editar</td>";
					echo "<td>Boton eliminar</td>";
					echo "</tr>";
				}

			?>

			</table>
		</div>

		<div style="text-align: center;">

			<form action="#" method="post">

				<input type="submit" name="crearUsuario" value="Crear Usuario"/>

			</form>

		</div>


		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>