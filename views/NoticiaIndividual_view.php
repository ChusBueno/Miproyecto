<html>

	<head>
		
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title> Federación Cántabra de Baloncesto </title>
		<link rel="stylesheet" href="css/estilos.css">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
	</head>

	<body onload="play()">

		<!-- header -->
		<?php include 'componentes/header.php'; ?>
		
		<!-- nav -->
		<?php  include 'componentes/nav.php'; ?>

		<!-- slider y agenda -->
		<?php  include 'componentes/slider.php'; ?>
		<?php  include 'componentes/agenda.php'; ?>

		<!-- aside -->
		<?php  include 'componentes/aside.php'; ?>
		
		<article class="col-8">

			<div id="noticias" class="col-16">
				<a href="javascript:window.history.back();">&laquo; Volver atrás</a>			
	        	<?php
	        	//var_dump($datosNoticia);
	        	//var_dump($comentarios);
        		echo "<div class='noticiaInd col-16'>";

	            //<a href="admin.php?option=usuarios&editarUsuario='.$usuarioNivel['id'].'">
	            echo "<h3>".$datosNoticia['titulo']."</a></h3>";
	            echo "<h5>".$datosNoticia['subtitulo']."</h5>";
	            //echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$noticia['imagen']."' /> ".$noticia['texto']."</p>";
	            echo "<p> <img class='imagenNoticia' src='css/imagenes/noticias/".$datosNoticia['imagen']."' /> ".$datosNoticia['texto']."</p>";		      
	            echo "</div>";
	        	
				//echo $_SERVER['QUERY_STRING'];
	            echo "<div class='comentarios col-16'>";
	            echo "<h5>Comentarios</h5>";
    			foreach($comentarios as $comentario){

    				echo "<div class='comentario col-16'>";

    				echo "<p>".$comentario['texto']."</p>";
    				echo "<p> <span class='datos'> Escrito por: ".$comentario['nombreUsuario'].". Fecha: ". $comentario['fecha']."</span></p>";


    				echo "</div>";


    			}

    			echo "</table>";

    			echo "</div>";


		        ?>

		    

		    <!-- INSERTAR COMENTARIO -->

		    <?php 
		    	if(isset($_SESSION['idusuario']) == false){
		    		echo "<p style='text-align:center;color:red;'>!Para poder escribir un comentario debe iniciar sesion!</p>";
		    	}else{
		    ?>

		    <form class="col-16" method="post">
		    	<p>Deje su comentario:</p>
		    	<input type="text" class="col-16" />
		    	<input type="submit" value="Enviar" name="enviarComentario"/>
		    </form>


			<?php } ?>

	    	</div>




   		</article>



		<!-- footer-->
		<?php include 'componentes/footer.php'; ?>

	</body>


</html>



