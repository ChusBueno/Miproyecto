<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
	</head>

	<body id="login">


		<div>

			<img src="cms/css/imagenes/inicio/fcb1.png"/>

			<form action="admin.php" method="post">

				<input class="input" type="text" name="usuario" placeholder="Usuario" autofocus/>
				<input class="input" type="password" name="contrasenia" placeholder="Contraseña"/>

				<input type="submit" class="boton" name="entrar" value="Entrar" />

			</form>


			<div class="error">
	            <?php if($error != ''){ ?>
	                <p><?php echo $error; ?></p>
	            <?php } ?>

	        </div>


    	</div>
	</body>


</html>