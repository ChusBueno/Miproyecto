<section class="col-4 col-lg-6 col-md-6 col-sm-16">

<?php 

$agendas = modelMain::obtenNoticias('agenda','noticias_agenda');
?>


			<div id="agenda" class="col-16 col-lg-16 col-md-16 col-sm-16">

				<h3 class="agendatitulo">Próximos eventos</h3>

				<?php 

					foreach($agendas as $agenda){
						echo "<div class='agenda'>";
						echo "<div class='resalte'>";
						echo "<h5>".$agenda['titulo']."</h5>";
						echo "</div>";
						echo "<p>".$agenda['texto']."</p>";
						echo "</div>";



					}

				?>



			</div>

		</section>