		<?php /*var_dump($_SESSION);*/ if(isset($_SESSION['idusuario']) == false){?>
		<header class="offset-3 col-10 col-lg-16">
			<div id="logo" class="col-2 col-lg-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6 col-lg-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="col-7 col-lg-7 offset-lg-1">

				<form  method="post">

					<input type="text" name="nombre" placeholder="Usuario">
					<input type="password" name="contrasenia" placeholder="Contraseña">
					<input type="submit" class="botonLogin" name="botonLogin" value="Entrar">

				</form>
				<p>¿No tienes cuenta?<a href="#" onclick="abrirModal('modalAnadir')">Registrate!</a></p>

			</div>
			<!---------------- MODAL -->
			<div id="modalAnadir" class="modal">

				<div class="modal-data">
					<i id="cerrarAnadir" onmouseover="cerrarHover('cerrarAnadir')" onclick="cerrarModal('modalAnadir')" onmouseout="cerrarOut('cerrarAnadir')" class="cerrar far fa-times-circle"></i>

					<h2 style="text-align:center;">Registro:</h2>
					<form method="post">
					   	
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
				     
							

							<input type="submit" class="aceptar" name="CrearCuenta" value="Crear cuenta"/>
					       
					   	

					</form>
					
				</div>


			</div>


		</header>


		<?php }else{ ?>

		<header class="offset-3 col-10 col-lg-16">
			<div id="logo" class="col-2 col-lg-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6 col-lg-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="offset-2 col-5 col-lg-5 offset-lg-3">
				<img src="css/imagenes/login/user.svg"/>
				<?php echo "<p><b>Bienvenido</b> ". $_SESSION['nombre']." ".$_SESSION['apellido']."</p>"; ?>
				<a href="index.php?option=logout" class="apagar"><i class='fas fa-power-off'></i>cerrar sesión</a>
				<?php // echo "</p>"; ?>

			</div>
		</header>

		<?php } ?>