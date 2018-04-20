<header class="col-16">



	<div id="logo" class="col-1">
		<a href="admin.php?option=inicio"></a>
	</div>

	<div id="titulo" class="col-5">
		<h2><span style='color:blue;'>Federación</span><span style="color:gray;"> Cántabra de Baloncesto</span> </h2>
	</div>

	<div id="datos" class="offset-3 col-7">

		<?php 
			echo "<div class='dato col-5' ><i class='fas fa-user'></i>".$_SESSION['nombre']." ".$_SESSION['apellido']. "</div>";
			echo "<div class='dato col-5'><i class='fas fa-user-circle'></i>".$_SESSION['permiso']."</div>";
		?>

		<div class="dato col-5">
			<a href="admin.php?option=logout"><i class='fas fa-power-off'></i>cerrar sesión</a>
		</div>

	</div>




</header>