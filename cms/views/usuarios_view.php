<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.min.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="cms/js/colorAside.js"></script>
	</head>

	<body onload="colorAsideActivo()">


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="usuarios" class="col-13">

			
			<form method="post">
				Tipo de usuario: <select name="permisos">
					<?php
					foreach($permisos as $permiso){
						echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
					}
					?>

				</select>

				<input type="submit" name="buscar" value="Buscar"/>
			</form>

			<?php 

				//para no mostrar q la variable no esta iniciada
				//error_reporting(0);
				
				//var_dump($usuariosNivel);
				if(isset($usuariosNivel)){
					
					echo "<table class='tabla'>
							<tr>
								<th>Nombre Usuario </th>
								<th>Nombre </th>
								<th>Apellido </th>
								<th>Telefono </th>
								<th>Editar </th>
								<th>Borrar </th>
							</tr>";


					foreach ($usuariosNivel as $usuarioNivel){
						echo "<tr>";
						echo "<td>".$usuarioNivel['nombreUsuario']."</td>";
						echo "<td>".$usuarioNivel['nombre']."</td>";
						echo "<td>".$usuarioNivel['apellido']."</td>";
						echo "<td>".$usuarioNivel['telefono']."</td>";					
						echo "<td><i class='fas fa-edit'></i></td>";
						echo "<td><a href='admin.php?option=usuarios&borrarUsuario=".$usuarioNivel['id']."'><i class='fas fa-trash-alt'></i></a></td>";
						echo "</tr>";
					}

					echo "</table>";





				}

			?>






		</div>


		






		<!--

		<div style="text-align: center;">

			<form action="#" method="post">

				<input type="submit" name="crearUsuario" value="Crear Usuario"/>

			</form>

		</div>

	-->
		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>