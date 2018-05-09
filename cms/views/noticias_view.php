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


		<div id="noticias" class="col-13">


			<?php 
			//El redactor normal solo puede ver sus noticias.
			//Admin y redactor jefe pueden ver todas
			if($_SESSION['permiso'] == 'Redactor'){

				echo "eres redactor, solo puedes ver tus noticias!";
				echo "</div>";
						    
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
						echo "<td><i class='fas fa-edit'></i></td>";
						echo "<td><a href='admin.php?option=noticias&borrar=".$noticia['id']."'><i class='fas fa-trash-alt'></i></a></td>";
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
						<?php
							if(isset($subcategorias)){
								foreach($subcategorias as $subcategoria){
									echo "<option value=".$subcategoria['id'].">".$subcategoria['nombre']."</option>";
								}

							}
						?>
					</select>

					<input type="submit" name="buscar" value="Buscar"/>
				</form>
			

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

			    <div>
			    <?php
			    	if(isset($noticias)){

			    		if(count($noticias) == 0){
			    			echo "No hay noticias";
			    			
			    		}else{


			    			echo "<table class='tabla'>
									<tr>
										<th>Id</th>
										<th>Titulo </th>
										<th>Subtitulo</th>
										<th>Texto</th>
										<th>Fecha</th>
										<th>Editar </th>
										<th>Borrar </th>
									</tr>";


							foreach ($noticias as $noticia){
								echo "<tr>";
								echo "<td>".$noticia['id']."</td>";
								echo "<td>".$noticia['titulo']."</td>";
								echo "<td>".$noticia['subtitulo']."</td>";
								echo "<td>".$noticia['texto']."</td>";
								echo "<td>".$noticia['fecha']."</td>";
								echo "<td><i class='fas fa-edit'></i></td>";
								echo "<td><a href='admin.php?option=noticias&borrar=".$noticia['id']."'><i class='fas fa-trash-alt'></i></a></td>";							
								echo "</tr>";
							}

							echo "</table>";

						}

			    }

			    ?>

			    </div>
		    </div>

	    <?php }	?>




		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>