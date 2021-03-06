<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto CMS </title>
		<link rel="stylesheet" href="cms/css/estilos.css">
		<link rel="stylesheet" href="css/iconos/css/fontawesome-all.min.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<script type="text/javascript" src="librerias/jquery/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="cms/js/funciones.js"></script>
	</head>

	<body>


		<!-- header -->
		<?php include 'cms/componentes/header.php'; ?>
		<!-- aside-->
		<?php include 'cms/componentes/aside.php'; ?>


		<div id="patrocinadores" class="col-13 col-lg-13 col-md-13">
		<i  onclick='abrirModal("modalAnadir")' class='add fas fa-plus'> <span class="left">Añadir Patrocinador</span></i>


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
					echo "<td><img src='css/imagenes/patrocinadores/".$patrocinador['imagen']."'></td>";
					echo '<td><a href="admin.php?option=patrocinadores&editar='.$patrocinador['id'].'"><i class="fas fa-edit" ></i></a></td>';
					echo "<td><a href='admin.php?option=patrocinadores&borrar=".$patrocinador['id']."'><i class='fas fa-trash-alt'></i></a></td>";
					echo "</tr>";
				}

				echo "</table>";
			?>

		</div>

			<?php
			
					//paginador
			    	echo "<div class='paginador'>";
				    for($i=0; $i<$numPaginas;$i++){
				       echo '<a href="admin.php?option=patrocinadores&pag='.($i+1).'">'.($i+1).'</a> | ';
				    } 
				    echo "</div>";

	

		         ?>


		<div id="modalAnadir" class="modal">

			<div class="modal-data">
				<i id="cerrarAnadir" onmouseover="cerrarHover('cerrarAnadir')" onclick="cerrarModal('modalAnadir','patrocinadores')" onmouseout="cerrarOut('cerrarAnadir')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Añadir Patrocinador:</h2>
				<form method="post" enctype="multipart/form-data">

				   		
				       	<label for="Nombre">Nombre:</label>
				       	<input type="text" name="nombre" required id="nombre" />

						<label for="url">Pagina web:</label>
				       	<input type="text" name="url" required id="url"  pattern="https?://.+" title="Debe empezar por:  http://" />

				       	<label for="imagen">Imagen: </label>

				       	<input type="file" name="fichero" required/>


							     
						

						<input type="submit" class="aceptar" name="crearPatrocinador" value="Insertar Patrocinador"/>
				       
				   	

				</form>
		
			</div>


		</div>

		<div id="modalEditar" class="modal">

			<div class="modal-data">
				<i id="cerrarEditar" onmouseover="cerrarHover('cerrarEditar')" onclick="cerrarModal('modalEditar','patrocinadores')" onmouseout="cerrarOut('cerrarEditar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Editar Patrocinador:</h2>
				<form method="post" enctype="multipart/form-data">
				   		
				   		<input type="hidden" name="id" value="<?php echo $datosPatrocinador['id'] ?>"/>
				       	<label for="Nombre">Nombre:</label>
				       	<input type="text" name="nombreEditar" required id="nombreEditar"  value="<?php echo $datosPatrocinador['nombre'] ?>" />

						<label for="url">Pagina web:</label>
				       	<input type="text" name="urlEditar" required id="urlEditar"  pattern="https?://.+" title="Debe empezar por:  http://"  value="<?php echo $datosPatrocinador['url'] ?>"/>

				       	<label for="imagen">Imagen: </label>

				       	<input type="file" name="fichero"/>

							     
						

						<input type="submit" class="aceptar" name="EditarPatrocinador" value="Editar Patrocinador"/>
				       
				   	

				</form>
		
			</div>


		</div>




		<div id="modalBorrar" class="modal">

			<div class="modal-data">
				<i id="cerrarBorrar" onmouseover="cerrarHover('cerrarBorrar')" onclick="cerrarModal('modalBorrar','patrocinadores')" onmouseout="cerrarOut('cerrarBorrar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Borrar Patrocinador</h2>
				<form action="admin.php?option=patrocinadores" method="post">
					<p style="text-align:center;">¿Esta seguro de querer borrar el patrocinador?</p>
					<input type="hidden" name="idBorrar" value="<?php echo $id ?>">
					<input type="submit" class="borrarAceptar" name="borrarPatrocinador" value="Borrar Patrocinador"/>
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
		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>