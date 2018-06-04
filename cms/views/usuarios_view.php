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

			
			<form action="admin.php?option=usuarios" method="post">
				Tipo de usuario: <select name="permisos">
					<?php
					foreach($permisos as $permiso){
						echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
					}
					?>

				</select>

				<input type="submit" name="buscar" value="Buscar"/>
				<i id='add' onclick='abrirModal("modalAnadir")' class='fas fa-user-plus'></i>
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
						echo '<td><a href="admin.php?option=usuarios&editarUsuario='.$usuarioNivel['id'].'"><i onclick="abrirModal(\'modalEditar\')" class="fas fa-edit" ></i></a></td>';
						echo "<td><a href='admin.php?option=usuarios&borrarUsuario=".$usuarioNivel['id']."'><i class='fas fa-trash-alt'></i></a></td>";
						echo "</tr>";
					}

					echo "</table>";




				}
/*
				$url = $_SERVER["REQUEST_URI"];
				//para solo coger usuarios&
				$acortar = substr($url,-10,9);

				echo "la url es: ". $url;

				echo "<br>Acortada es: ".$acortar;
				$cadena = "usuarios&";

				if($acortar == $cadena){
					echo "yuju son iguales!";

				}
*/
			?>
		


		</div>

		<div id="modalAnadir" class="modal">

			<div class="modal-data">
				<i id="cerrarAnadir" onmouseover="cerrarHover('cerrarAnadir')" onclick="cerrarModal('modalAnadir')" onmouseout="cerrarOut('cerrarAnadir')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Añadir Usuario:</h2>
				<form action="admin.php?option=usuarios" method="post">
				   	
				       	<label for="nombreUsuario">Nombre de usuario:</label>
				       	<input type="text" name="nombreUsuario" id="nombreUsuario" />

						<label for="nombre">Nombre:</label>
				       	<input type="text" name="nombre" id="nombre" />


				       	<label for="apellido">Apellido:</label>
				       	<input type="text" name="apellido" id="apellido" />

				       	<label for="contrasenia">Contraseña:</label>
				       				   					   				  			       
				       	<input type="password" name="contrasenia" id="contrasenia" />


				       	<label for="tlf">Telefono:</label>
				       	<input type="tel" name="tlf" id="tlf" />

				       	<label for="permiso">Permiso:</label>

						<select name="permisosGuardar">
							<?php
							foreach($permisos as $permiso){
								echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
							}
							?>
						</select>
				     
						

						<input type="submit" id="aceptar" name="CrearUsuario" value="Crear Usuario"/>
				       
				   	

				</form>
				
			</div>


		</div>


		<div id="modalEditar" class="modal">

			<div class="modal-data">
				<i id="cerrarEditar" onmouseover="cerrarHover('cerrarEditar')" onclick="cerrarModal('modalEditar')" onmouseout="cerrarOut('cerrarEditar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Editar Usuario:</h2>
				<form action="admin.php?option=usuarios" method="post">
				   	
				       	<label for="nombreUsuario">Nombre de usuario:</label>
				       	<input type="text" name="nombreUsuario" id="nombreUsuarioEditar" value="<?php echo $datosUsuario['nombreUsuario'] ?>"/>

						<label for="nombre">Nombre:</label>
				       	<input type="text" name="nombre" id="nombreEditar" value="<?php echo $datosUsuario['nombre'] ?>"/>


				       	<label for="apellido">Apellido:</label>
				       	<input type="text" name="apellido" id="apellidoEditar" value="<?php echo $datosUsuario['apellido'] ?>" />

				       	<label for="contrasenia">Contraseña:</label>
				       				   					   				  			       
				       	<input type="password" name="contrasenia" id="contraseniaEditar" value="<?php echo $datosUsuario['contrasenia'] ?>"/>


				       	<label for="tlf">Telefono:</label>
				       	<input type="tel" name="tlf" id="tlfEditar" value="<?php echo $datosUsuario['telefono'] ?>"	/>

				       	<label for="permiso">Permiso:</label>

						<select name="permisos">
							<?php
							foreach($permisos as $permiso){
								echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
							}
							?>
						</select>
				     
						

						<input type="submit" id="aceptar" name="EditarUsuario" value="Guardar cambios"/>
				       
				   	

				</form>
				
			</div>


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




			<script>
				
				//alert(window.location.search);

				var url = window.location.search;

				var acortada = url.substr(-24,22);

				//alert(acortada);
				var cadena = "usuarios&editarUsuario";
				
				if (acortada == cadena){
					/*
					alert("estas en editar");
					console.log("estas en editar");*/

					document.getElementById("modalEditar").style.display="block";
				}
				


			</script>


	</body>


</html>