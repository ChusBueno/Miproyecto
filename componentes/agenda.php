<section class="col-4">

<?php 

$agendas = modelMain::obtenNoticias('agenda','noticias_agenda');
?>


			<div id="agenda" class="col-16">

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