<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.min.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="cms/js/funciones.js"></script>
	</head>

	<body>


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="usuarios" class="col-13 col-lg-13 col-md-13">

			
			<form action="admin.php?option=usuarios" method="post">
				Tipo de usuario: <select name="permisos">
					<?php
					foreach($permisos as $permiso){
						echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
					}
					?>

				</select>

				<input type="submit" name="buscar" value="Buscar"/>
				<i onclick='abrirModal("modalAnadir")' class='add fas fa-user-plus'></i>
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
						echo '<td><a href="admin.php?option=usuarios&editarUsuario='.$usuarioNivel['id'].'"><i class="fas fa-edit" ></i></a></td>';
						echo "<td><a href='admin.php?option=usuarios&borrarUsuario=".$usuarioNivel['id']."'><i class='fas fa-trash-alt'></i></a></td>";
						echo "</tr>";
					}

					echo "</table>";




				}

			?>
		


		</div>

		<div id="modalAnadir" class="modal">

			<div class="modal-data">
				<i id="cerrarAnadir" onmouseover="cerrarHover('cerrarAnadir')" onclick="cerrarModal('modalAnadir','usuarios')" onmouseout="cerrarOut('cerrarAnadir')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Añadir Usuario:</h2>
				<form action="admin.php?option=usuarios" method="post">
				   	
				       	<label for="nombreUsuario">Nombre de usuario:</label>
				       	<input type="text" name="nombreUsuario" id="nombreUsuario" required/>

						<label for="nombre">Nombre:</label>
				       	<input type="text" name="nombre" id="nombre" required/>


				       	<label for="apellido">Apellido:</label>
				       	<input type="text" name="apellido" id="apellido" required/>

				       	<label for="contrasenia">Contraseña:</label>
				       				   					   				  			       
				       	<input type="password" name="contrasenia" id="contrasenia" required/>


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
				     
						

						<input type="submit" class="aceptar" name="CrearUsuario" value="Crear Usuario"/>
				       
				   	

				</form>
				
			</div>


		</div>


		<div id="modalEditar" class="modal">

			<div class="modal-data">
				<i id="cerrarEditar" onmouseover="cerrarHover('cerrarEditar')" onclick="cerrarModal('modalEditar','usuarios')" onmouseout="cerrarOut('cerrarEditar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Editar Usuario:</h2>
				<form action="admin.php?option=usuarios" method="post">
				   		
				   		<input type="hidden" name="idEditar" id="idEditar" value="<?php echo $datosUsuario['id'] ?>">
				       	<label for="nombreUsuario">Nombre de usuario:</label>
				       	<input type="text" name="nombreUsuarioEditar" id="nombreUsuarioEditar" required value="<?php echo $datosUsuario['nombreUsuario'] ?>"/>

						<label for="nombre">Nombre:</label>
				       	<input type="text" name="nombreEditar" id="nombreEditar" required value="<?php echo $datosUsuario['nombre'] ?>"/>


				       	<label for="apellido">Apellido:</label>
				       	<input type="text" name="apellidoEditar" id="apellidoEditar" required value="<?php echo $datosUsuario['apellido'] ?>" />

				       	<label for="contrasenia">Contraseña:</label>
				       				   					   				  			       
				       	<input type="password" name="contraseniaEditar" id="contraseniaEditar" required value="<?php echo $datosUsuario['contrasenia'] ?>"/>


				       	<label for="tlf">Telefono:</label>
				       	<input type="tel" name="tlfEditar" id="tlfEditar" value="<?php echo $datosUsuario['telefono'] ?>"	/>

				       	<label for="permiso">Permiso:</label>

						<select name="permisosEditar">
							<?php
							foreach($permisos as $permiso){
								echo "<option value=".$permiso['id'].">".$permiso['descripcion']."</option>";
							}
							?>
						</select>
				     
						

						<input type="submit" class="aceptar" name="EditarUsuario" value="Guardar cambios"/>
				       
				   	

				</form>
				
			</div>


		</div>


		<div id="modalBorrar" class="modal">

			<div class="modal-data">
				<i id="cerrarBorrar" onmouseover="cerrarHover('cerrarBorrar')" onclick="cerrarModal('modalBorrar','usuarios')" onmouseout="cerrarOut('cerrarBorrar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Borrar Usuario</h2>
				<form action="admin.php?option=usuarios" method="post">
					<p style="text-align:center;">¿Esta seguro de querer borrar el usuario?</p>
					<p style="text-align: center;color:red">Nota: los comentarios y las noticias creados por el usuario también se borraran!</p>
					<input type="hidden" name="idBorrar" value="<?php echo $id ?>">
					<input type="submit" class="borrarAceptar" name="borrarUsuario" value="Borrar Usuario"/>
					<input type="submit" class="borrarCancelar" name="cancelarBorrar" value="Cancelar">				   				     					
				       				 

				</form>
				
			</div>


		</div>




		<div id="snackbar">


		</div>

			
		<?php
		//var_dump($insertar);
		// SNACKBAR RESPUESTA, INSERTAR,EDITAR,BORRAR

		 	if (isset($insertar) == 1){
			
		?>

				<script>snackbar("Insertado Correctamente","green");</script>
		<?php

		 	}?>
		<?php
		
		//comprobar que existe, despues comprobar que esta vacia

		//daba error con isnull y con  == 0
			if(isset($insertar)){
		 	if (empty($insertar)){
			
		?>

				<script>snackbar("Nombre repetido, no se puede insertar","red");</script>
		<?php

		 	}}?>


		<?php

		 	if (isset($editar) == 1){
			
		?>

				<script>snackbar("Editado Correctamente","green");</script>
		<?php

		 	}?>
		<?php
		
		//comprobar que existe, despues comprobar que esta vacia

		//daba error con isnull y con  == 0
			if(isset($editar)){
		 	if (empty($editar)){
			
		?>

				<script>snackbar("No se ha editado","red");</script>
		<?php

		 	}}?>



		<?php


		 	if (isset($borrar) == 1){
			
		?>

				<script>snackbar("Borrado Correctamente","green");</script>
		<?php

		 	}?>
		<?php
		
		//comprobar que existe, despues comprobar que esta vacia

		//daba error con isnull y con  == 0
			if(isset($borrar)){
		 	if (empty($borrar)){
			
		?>

				<script>snackbar("No se puede borrar","red");</script>
		<?php

		 	}}?>




		






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
				
			</script>


	</body>


</html>