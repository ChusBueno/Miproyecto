<footer class="offset-3 col-10 col-lg-16 col-md-16">

<!--pie de pagina-->




			<div id="menu_abajo">

				<p>ENTIDADES COLABORADORAS</p>
				<hr>

	        	<?php
				
					$db = new database();
					$sql = 'SELECT * FROM patrocinadores';
					$db->query($sql);
					$patrocinadores  = $db->cargaMatriz();
					 
					echo "<ul>";
			        foreach($patrocinadores as $patrocinador){
			            echo "<li><a class='patrocinador' href=".$patrocinador['url']." target='_blank' style='background-image: url(css/imagenes/patrocinadores/".$patrocinador['imagen'].");'></a></li>";
						
			        } 

		        ?>

			</div>




		<div id="avisoLegal" class="col-10 col-lg-16 col-md-16">
			<a href="index.php?option=verpdf&nombre=avisolegal">LOPD AVISO LEGAL</a>
		</div>

		<!--Final pie de pagina-->
</footer>