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


		<div id="noticias" class="col-13">

			
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
		</div>

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


    			echo "<table>
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
					echo "<td>Boton editar</td>";
					echo "<td>Boton eliminar</td>";
					echo "</tr>";
				}

				echo "</table>";


	    }

	    ?>

	    </div>




		<!-- footer-->
		<?php include 'cms/componentes/footer.php'; ?>






	</body>


</html>