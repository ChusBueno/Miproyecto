<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.min.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="librerias/jquery/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="cms/js/colorAside.js"></script>
	</head>

	<body onload="colorAsideActivo()">


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="patrocinadores" class="col-13">


			<?php

				echo "<table class='tabla'>
							<tr>
								<th>Id</th>
								<th>Nombre </th>
								<th>url</th>
								<th>Imagen</th>				
								<th>Editar </th>
								<th>Borrar </th>
							</tr>";

				foreach($patrocinadores as $patrocinador){
					echo "<tr>";
					echo "<td>".$patrocinador['id']."</td>";
					echo "<td>".$patrocinador['nombre']."</td>";
					echo "<td>".$patrocinador['url']."</td>";
					echo "<td>".$patrocinador['imagen']."</td>";
					echo "<td><i class='fas fa-edit'></i></td>";
					echo "<td><a href='admin.php?option=patrocinadores&borrar=".$patrocinador['id']."'><i class='fas fa-trash-alt'></i></a></td>";
					echo "</tr>";
				}

				echo "</table>";
			?>

		</div>

	

	

		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>