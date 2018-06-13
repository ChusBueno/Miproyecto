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


		<div id="noticias" class="col-13">


			<?php 
			//El redactor normal solo puede ver sus noticias.
			//Admin y redactor jefe pueden ver todas
			if($_SESSION['permiso'] == 'Redactor'){

				echo "eres redactor, solo puedes ver tus noticias!";
						    
		    	if(isset($noticiasRedactor)){


	    			echo "<table class='tabla'>
							<tr>
								<th>Id</th>
								<th>IdUsuario</th>
								<th>Titulo </th>
								<th>Subtitulo</th>
								<th>Texto</th>
								<th>Fecha</th>
								<th>Editar </th>
								<th>Borrar </th>
							</tr>";


					foreach ($noticiasRedactor as $noticia){
						echo "<tr>";
						echo "<td>".$noticia['id']."</td>";
						echo "<td>".$noticia['id_usuario']."</td>";
						echo "<td>".$noticia['titulo']."</td>";
						echo "<td>".$noticia['subtitulo']."</td>";
						echo "<td>".$noticia['texto']."</td>";
						echo "<td>".$noticia['fecha']."</td>";							
						echo '<td><a href="admin.php?option=noticias&editarNoticia='.$noticia['id'].'"><i class="fas fa-edit" ></i></a></td>';
						echo "<td><a href='admin.php?option=noticias&borrarNoticia=".$noticia['id']."'><i class='fas fa-trash-alt'></i></a></td>";
						echo "</tr>";
					}

					echo "</table>";


		    }

		 

			}else{
				?>


				<form method="post">
					<select id="categorias" name="categorias">
						<?php
						foreach($categorias as $categoria){
							echo "<option value=".$categoria['id'].">".$categoria['nombre']."</option>";
						}
						?>

					</select>

					<select id="subcategorias" name="subcategorias" disabled="">

					</select>

					<input type="submit" name="buscar" value="Buscar"/>
					<i  onclick='abrirModal("modalAnadir")' class='add fas fa-plus'></i>
				</form>
			


			    <div>
			    <?php
			    	if(isset($noticias)){

			    		if(count($noticias) == 0){
			    			echo "No hay noticias";
			    			
			    		}else{


			    			echo "<table class='tabla'>
									<tr>										
										<th>Titulo </th>
										<th>Subtitulo</th>
										<th>Texto</th>
										<th>Fecha</th>
										<th>Imagen</th>
										<th>Editar </th>
										<th>Borrar </th>
									</tr>";


							foreach ($noticias as $noticia){
								echo "<tr>";								
								echo "<td>".$noticia['titulo']."</td>";
								echo "<td>".$noticia['subtitulo']."</td>";
								echo "<td>".$noticia['texto']."</td>";
								echo "<td>".$noticia['fecha']."</td>";
								echo "<td><img src='css/imagenes/noticias/".$noticia['imagen']."'></td>";
								echo '<td><a href="admin.php?option=noticias&editarNoticia='.$noticia['id'].'"><i class="fas fa-edit" ></i></a></td>';
								echo "<td><a href='admin.php?option=noticias&borrarNoticia=".$noticia['id']."'><i class='fas fa-trash-alt'></i></a></td>";
								echo "</tr>";
							}

							echo "</table>";

						}

			    }

			    ?>

			    </div>
		    </div>

	    <?php }	?>


		<div id="modalAnadir" class="modal">

			<div class="modal-data">
				<i id="cerrarAnadir" onmouseover="cerrarHover('cerrarAnadir')" onclick="cerrarModal('modalAnadir','noticias')" onmouseout="cerrarOut('cerrarAnadir')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Añadir Noticia:</h2>
				<form method="post" enctype="multipart/form-data">
				   	
				       	<label for="titulo">Titulo:</label>
				       	<input type="text" name="tituloNoticia" id="tituloNoticia" required />

						<label for="subtitulo">Subtitulo:</label>
				       	<input type="text" name="subtituloNoticia" id="subtituloNoticia" required/>

				       	<label for="categoria">Categoria:</label>
						<select id="categoriasAnadir" name="categoriasAnadir">
							<?php
							foreach($categorias as $categoria){
								echo "<option value=".$categoria['id'].">".$categoria['nombre']."</option>";
							}
							?>

						</select>

				       	
				       	<label for="subcategoria">Subcategoria:</label>
				 
						<select id="subcategoriasAnadir" name="subcategoriasAnadir" disabled="">

						</select>
					       	

				       	<label for="texto">Texto:</label>
				       	<textarea name="texto" id="texto" maxlength="400" rows="10"></textarea>

				       	</textarea>

				       	<label for="imagen">Imagen: </label>

				       	<input type="file" name="fichero" required/>


							     
						

						<input type="submit" class="aceptar" name="crearNoticia" value="Crear Noticia"/>
				       
				   	

				</form>
		
			</div>


		</div>


		<div id="modalEditar" class="modal">

			<div class="modal-data">
				<i id="cerrarEditar" onmouseover="cerrarHover('cerrarEditar')" onclick="cerrarModal('modalEditar','noticias')" onmouseout="cerrarOut('cerrarEditar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Editar Noticia:</h2>
				<form method="post" enctype="multipart/form-data">
				   		
				   		<input type="hidden" name="idNoticia" value="<?php echo $datosNoticia['id'] ?>"/>
				       	<label for="titulo">Titulo:</label>
				       	<input type="text" name="tituloNoticiaEditar" required id="tituloNoticiaEditar" value="<?php echo $datosNoticia['titulo'] ?>" />

						<label for="subtitulo">Subtitulo:</label>
				       	<input type="text" name="subtituloNoticiaEditar" required id="subtituloNoticiaEditar" value="<?php echo $datosNoticia['subtitulo'] ?>" />

				       	<label for="categoria">Categoria:</label>
						<select id="categoriasEditar" name="categoriasEditar">
							<?php
							foreach($categorias as $categoria){
								echo "<option value=".$categoria['id'].">".$categoria['nombre']."</option>";
							}
							?>

						</select>

				       	
				       	<label for="subcategoria">Subcategoria:</label>
				 
						<select id="subcategoriasEditar" name="subcategoriasEditar" disabled="">

						</select>
					       	

				       	<label for="texto">Texto:</label>
				       	<textarea name="textoEditar" id="textoEditar" rows="10"><?php echo $datosNoticia['texto'] ?></textarea>

				       	</textarea>

				       	<label for="imagen">Imagen: </label>

				       <input type="file" name="fichero"/>


							     
						

						<input type="submit" class="aceptar" name="EditarNoticia" value="Editar Noticia"/>
				       
				   	

				</form>
		
			</div>


		</div>



		<div id="modalBorrar" class="modal">

			<div class="modal-data">
				<i id="cerrarBorrar" onmouseover="cerrarHover('cerrarBorrar')" onclick="cerrarModal('modalBorrar','noticias')" onmouseout="cerrarOut('cerrarBorrar')" class="cerrar far fa-times-circle"></i>

				<h2 style="text-align:center;">Borrar Noticia</h2>
				<form action="admin.php?option=noticias" method="post">
					<p style="text-align:center;">¿Esta seguro de querer borrar la noticia?</p>
					<input type="hidden" name="idBorrar" value="<?php echo $id ?>">
					<input type="submit" class="borrarAceptar" name="borrarNoticia" value="Borrar Noticia"/>
					<input type="submit" class="borrarCancelar" name="cancelarBorrar" value="Cancelar">				   				     					
				       				 

				</form>
				
			</div>


		</div>
</div><!-- cierre div noticias -->



		<div id="snackbar">


		</div>

			
		<?php
		//var_dump($editar);
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




				<!-- Iniciamos el segmento de codigo javascript -->
			    <script type="text/javascript">
			      $(document).ready(function(){
			        var subcategorias = $('#subcategorias');
			
			        //Ejecutar accion al cambiar de opcion en el select de las categorias
			        $('#categorias').change(function(){
			          var categoria_id = $(this).val(); //obtener el id seleccionado
			          
			          if(categoria_id !== ''){ //verificar haber seleccionado una opcion valida
			            
			            /*Inicio de llamada ajax*/
			            $.ajax({
			              data: {categoria_id:categoria_id}, //variables o parametros a enviar, formato => nombre_de_variable:contenido
			              dataType: 'html', //tipo de datos que esperamos de regreso
			              type: 'POST', //mandar variables como post o get
			              url: 'cms/ajax/subcategorias_select.php' //url que recibe las variables
			            }).done(function(data){ //metodo que se ejecuta cuando ajax ha completado su ejecucion             
			              
			              subcategorias.html(data); //establecemos el contenido html de discos con la informacion que regresa ajax             
			              subcategorias.prop('disabled', false); //habilitar el select
			            });
			            /*fin de llamada ajax*/
			            
			          }else{ //en caso de seleccionar una opcion no valida
			            subcategorias.val(''); //seleccionar la opcion "- Seleccione -", osea como reiniciar la opcion del select
			            subcategorias.prop('disabled', true); //deshabilitar el select
			          }    
			        });
			        
			        
			        
			      });
			    </script> 

			   	<!-- REPITO EL SCRIPT, no funcionaba con uno solo. LLama al mismo archivo ajax, al fin y al cabo la respuesta es la misma -->
			    <script type="text/javascript">
			      $(document).ready(function(){
			        var subcategorias = $('#subcategoriasAnadir');
			
			        //Ejecutar accion al cambiar de opcion en el select de las categorias
			        $('#categoriasAnadir').change(function(){
			          var categoria_id = $(this).val(); //obtener el id seleccionado
			          
			          if(categoria_id !== ''){ //verificar haber seleccionado una opcion valida
			            
			            /*Inicio de llamada ajax*/
			            $.ajax({
			              data: {categoria_id:categoria_id}, //variables o parametros a enviar, formato => nombre_de_variable:contenido
			              dataType: 'html', //tipo de datos que esperamos de regreso
			              type: 'POST', //mandar variables como post o get
			              url: 'cms/ajax/subcategorias_select.php' //url que recibe las variables
			            }).done(function(data){ //metodo que se ejecuta cuando ajax ha completado su ejecucion             
			              
			              subcategorias.html(data); //establecemos el contenido html de discos con la informacion que regresa ajax             
			              subcategorias.prop('disabled', false); //habilitar el select
			            });
			            /*fin de llamada ajax*/
			            
			          }else{ //en caso de seleccionar una opcion no valida
			            subcategorias.val(''); //seleccionar la opcion "- Seleccione -", osea como reiniciar la opcion del select
			            subcategorias.prop('disabled', true); //deshabilitar el select
			          }    
			        });
			        
			        
			        
			      });
			    </script> 

			   	<!-- REPITO EL SCRIPT, MODAL EDITAR -->
			    <script type="text/javascript">
			      $(document).ready(function(){
			        var subcategorias = $('#subcategoriasEditar');
			
			        //Ejecutar accion al cambiar de opcion en el select de las categorias
			        $('#categoriasEditar').change(function(){
			          var categoria_id = $(this).val(); //obtener el id seleccionado
			          
			          if(categoria_id !== ''){ //verificar haber seleccionado una opcion valida
			            
			            /*Inicio de llamada ajax*/
			            $.ajax({
			              data: {categoria_id:categoria_id}, //variables o parametros a enviar, formato => nombre_de_variable:contenido
			              dataType: 'html', //tipo de datos que esperamos de regreso
			              type: 'POST', //mandar variables como post o get
			              url: 'cms/ajax/subcategorias_select.php' //url que recibe las variables
			            }).done(function(data){ //metodo que se ejecuta cuando ajax ha completado su ejecucion             
			              
			              subcategorias.html(data); //establecemos el contenido html de discos con la informacion que regresa ajax             
			              subcategorias.prop('disabled', false); //habilitar el select
			            });
			            /*fin de llamada ajax*/
			            
			          }else{ //en caso de seleccionar una opcion no valida
			            subcategorias.val(''); //seleccionar la opcion "- Seleccione -", osea como reiniciar la opcion del select
			            subcategorias.prop('disabled', true); //deshabilitar el select
			          }    
			        });
			        
			        
			        
			      });
			    </script> 

	</body>


</html>