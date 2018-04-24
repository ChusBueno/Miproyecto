<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="librerias/jquery/jquery-3.3.1.min.js"></script>
	</head>

	<body>


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="patrocinadores" class="col-13">

			<h2>Patrocinadores</h2>

			<?php

				echo "<table>
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
					echo "<td>Boton Editar</td>";
					echo "<td>Boton Borrar</td>";
					echo "</tr>";
				}

				echo "</table>";
			?>

		</div>

	

	

		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>