		<?php /*var_dump($_SESSION);*/ if(isset($_SESSION['idusuario']) == false){?>
		<header class="offset-3 col-10">
			<div id="logo" class="col-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="col-7">

				<form  method="post">

					<input type="text" name="nombre" placeholder="Usuario">
					<input type="password" name="contrasenia" placeholder="Contraseña">
					<input type="submit" name="botonLogin" value="Entrar">

				</form>


			</div>
		</header>


		<?php }else{ ?>

		<header class="offset-3 col-10">
			<div id="logo" class="col-2">
					<a href="#"></a>
			</div>

			<div id="titulo" class="offset-1 col-6">
				<h1>Federación Cántabra</h1>
				<h1>de Baloncesto</h1>
			</div>

			<div id="login" class="col-7">

				<?php echo "hola ". $_SESSION['nombre']." ".$_SESSION['apellido']; ?>
				<a href="index.php?option=logout"><i class='fas fa-power-off'></i>cerrar sesión</a>

			</div>
		</header>

		<?php } ?>